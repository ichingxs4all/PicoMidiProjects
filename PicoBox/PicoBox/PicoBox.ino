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

LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display

// USB MIDI object
Adafruit_USBD_MIDI usb_midi;

// Create a new instance of the Arduino MIDI Library,
// and attach usb_midi as the transport.
MIDI_CREATE_INSTANCE(Adafruit_USBD_MIDI, usb_midi, usbMIDI);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

int number[] = { 0,0,0};
int pgnumber;

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
  Serial.begin(115200);
  pinMode(SW,INPUT_PULLUP);
  encoder.begin();
      // Initialize MIDI, and listen to all MIDI channels
  // This will also call usb_midi's begin()
  MIDI.begin(MIDI_CHANNEL_OMNI);
  usbMIDI.begin(MIDI_CHANNEL_OMNI);

  lcd.init();                      // initialize the lcd 
  lcd.backlight();
  lcd.print("Pico MIDI Box");

  customKeypad.begin();

}

void loop() {
  // put your main code here, to run repeatedly:
  customKeypad.tick();
  count = pgnumber + encoder.getCount();
  if(count != prevCount) {
    if(count > 127 ) count = 127;
    if(count < 0 ) count = 0;
    Serial.println(count);
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("PGC Mode");
    lcd.setCursor(0, 1);
    lcd.print(count);
    prevCount = count;
    if(mode)
    sendPGC(count,lastChannel);
  }

  while(customKeypad.available()){
    //lcd.clear();
    keypadEvent e = customKeypad.read();
    int key = e.bit.KEY;
    if(e.bit.EVENT == KEY_JUST_PRESSED){
    if (key >= 48 && key <= 57 ){
     number[digit] = key - 48;
     if(number[0]>1) number[0] = 1;
     if(number[0]==1 &&number[1] >2 ){
      number[1] = 2;
  
     }
     Serial.print(number[digit]);
     lcd.setCursor(digit,1);
     lcd.print(number[digit]);
     digit++;
     if(digit > 2){
      pgnumber = 100 * number[0] + 10 * number[1] + number[2];
      Serial.println(pgnumber);
      sendPGC(pgnumber,lastChannel);

      digit = 0;
     }
    } else{
    switch (key){
      case 65 :
      sendPGC(pgnumber,chA);
      digit=0;
      break;
      case 66 :
      sendPGC(pgnumber,chB);
      digit=0;
      break;
      case 67 :
      sendPGC(pgnumber,chC);
      digit=0;
      break;
      case 68: 
      sendPGC(pgnumber,chD);
      digit=0;
      break;
      default:
      break;
    }
    }
    }
  }

  if(digitalRead(SW)==LOW)sendPGC(count,lastChannel);
  MIDI.read(); // read and discard any incoming MIDI messages
  usbMIDI.read();
  delay(10);
}


void sendPGC(int number , int channel){
  lcd.clear();
  MIDI.sendProgramChange(number, channel);
  usbMIDI.sendProgramChange(number, channel);
  lcd.setCursor(0,0);
  lcd.print("PGC Channel ");
  lcd.print(channel);
  Serial.print(" Program change ");
  Serial.print(number);
  Serial.print(" on channel ");
  Serial.println(channel);
  lcd.setCursor(0,1);
  lcd.print(number);
  lastChannel=channel;
}