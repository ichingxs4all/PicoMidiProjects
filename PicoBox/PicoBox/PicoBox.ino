#define KEYPAD_PID3844
#include "Adafruit_Keypad.h"

#include <Wire.h> 
#include <LiquidCrystal_I2C.h>

#include <Adafruit_TinyUSB.h> // Set USB Stack to Adafruit TinyUSB in Tools menu
#include <MIDI.h> // MIDI Library

#include "pio_encoder.h"

PioEncoder encoder(2); // encoder is connected to GPIO2 and GPIO3
#define SW 14

int count, prevCount;
int digit = 0;

const bool debug = true; 

LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display

// USB MIDI object
Adafruit_USBD_MIDI usb_midi;

// Create a new instance of the Arduino MIDI Library,
// and attach usb_midi as the transport.
MIDI_CREATE_INSTANCE(Adafruit_USBD_MIDI, usb_midi, usbMIDI);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

int number[] = { 0,0,0};
int pgnumber = 0;

const byte ROWS = 4; // rows
const byte COLS = 4; // columns

//define the symbols on the buttons of the keypads
char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};

byte rowPins[ROWS] = {6, 7, 8, 9}; //connect to the row pinouts of the keypad
byte colPins[COLS] = {10, 11, 12, 13}; //connect to the column pinouts of the keypad

//initialize an instance of class NewKeypad
Adafruit_Keypad customKeypad = Adafruit_Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS);

int chA =1; int chB = 2; int chC =3; int chD = 4;
int lastChannel =1;;

bool mode = 1;

void setup() {
  if(debug) Serial.begin(115200);
  
  setupEncoder();

  customKeypad.begin();

  setupMIDI();

  setupLCD();
}

void loop() {
  // put your main code here, to run repeatedly:
  customKeypad.tick();
  checkEncoder();
  checkKeys();

  MIDI.read(); // read and discard any incoming MIDI messages
  usbMIDI.read();
  delay(10);
}
