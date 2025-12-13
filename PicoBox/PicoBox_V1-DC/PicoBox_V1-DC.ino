#define KEYPAD_PID3844
#include "Adafruit_Keypad.h"

#include <Wire.h>
#include <LiquidCrystal_I2C.h>

#include <Adafruit_TinyUSB.h>  // Set USB Stack to Adafruit TinyUSB in Tools menu
#include <MIDI.h>              // MIDI Library

#include "pio_encoder.h"

PioEncoder encoder(2);  // encoder is connected to GPIO2 and GPIO3
#define SW 14           //Switch of encoder connected to GPIO14

const bool debug = true;

bool mergerOn = true;

LiquidCrystal_I2C lcd(0x27, 16, 2);  // set the LCD address to 0x27 for a 16 chars and 2 line display

// USB MIDI object
Adafruit_USBD_MIDI usb_midi;

// Create a new instance of the Arduino MIDI Library,
// and attach usb_midi and hardware serial as the transports.
MIDI_CREATE_INSTANCE(Adafruit_USBD_MIDI, usb_midi, usbMIDI);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

int number[] = { 0, 0, 0 };  //number buffer in digits
int pgnumber = 1;            //This will hold the actual program change number
int lastPgNumber;
char paddedPgNumber[3];  // a string representation of pgnumber with padded zeros

const byte ROWS = 4;  // rows for the keypad
const byte COLS = 4;  // columns for the keypad

//define the symbols on the buttons of the keypads
char keys[ROWS][COLS] = {
  { '1', '2', '3', 'A' },
  { '4', '5', '6', 'B' },
  { '7', '8', '9', 'C' },
  { '*', '0', '#', 'D' }
};

byte rowPins[ROWS] = { 6, 7, 8, 9 };      //connect these GPIO pins to the row pinouts of the keypad
byte colPins[COLS] = { 10, 11, 12, 13 };  //connect these GPIO pins to the column pinouts of the keypad

//initialize an instance of class NewKeypad
Adafruit_Keypad customKeypad = Adafruit_Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS);

int chA = 1;          //MIDI channel for A
int chB = 2;          //MIDI channel for B
int chC = 3;          //MIDI channel for C
int chD = 4;          //MIDI channel for D
int lastChannel = 1;  //This will hold the last MIDI channel used

int count, prevCount;  //This will hold the count number and last count number of the encoder
int digit = 0;         //This is the actual digit number
int digitsEntered = 0;

int note = 64;
int velocity = 127;

//In the first core we run all the encoder, keypad and lcd stuff
void setup() {
  if (debug) Serial.begin(115200);

  setupEncoder();
  customKeypad.begin();
  setupLCD();
}

void loop() {
  // put your main code here, to run repeatedly:
  customKeypad.tick();
  checkEncoder();
  checkSwitch();
  checkKeys();
}

//In the second core we run all the MIDI stuff
void setup1() {
  setupMIDI();
}

void loop1() {
  //If mergerOn is true do the merging
  if (mergerOn) {

    if (MIDI.read()) {
      // Thru on the hardware serial port  has already pushed the input message to out of the hardware serial port.
      // Forward the message to the USB MIDI out as well
      usbMIDI.send(MIDI.getType(),
                   MIDI.getData1(),
                   MIDI.getData2(),
                   MIDI.getChannel());
    }

    if (usbMIDI.read()) {
      // Thru on USB MIDI port has already pushed the input message to out of the USB MIDI port
      // Forward the message to out hardware serial out as well.
      MIDI.send(usbMIDI.getType(),
                usbMIDI.getData1(),
                usbMIDI.getData2(),
                usbMIDI.getChannel());
    }
  } else {
    MIDI.read();
    usbMIDI.read();
  }
}