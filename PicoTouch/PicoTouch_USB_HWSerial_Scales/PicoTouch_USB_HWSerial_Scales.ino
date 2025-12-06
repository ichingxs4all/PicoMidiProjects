#include <Adafruit_TinyUSB.h> // Set USB Stack to Adafruit TinyUSB in Tools menu
#include <MIDI.h> // MIDI Library

// Include the library
#include <Control_Surface.h>

// Create a filtered analog object on pin A0:
FilteredAnalog<12,      // Output precision in bits
               8,       // The amount of filtering
               uint32_t // The integer type for the calculations
               >
  analog0 = A0;


// Create a filtered analog object on pin A0:
FilteredAnalog<12,      // Output precision in bits
               8,       // The amount of filtering
               uint32_t // The integer type for the calculations
               >
  analog1 = A1;



// Create a filtered analog object on pin A0:
FilteredAnalog<12,      // Output precision in bits
               8,       // The amount of filtering
               uint32_t // The integer type for the calculations
               >
  analog2 = A2;



#include "TouchyTouch.h"

const int touch_pins[] = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 };
int touch_velocity[] = { 100,100,100,100,100,100,100,100,100,100,100,100,100,100, 100,100,100,100,100,100,100};
int touch_threshold[]={ 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000, 1000,1000,1000,1000,1000,1000,1000};
const int touch_count = sizeof(touch_pins) / sizeof(int);

TouchyTouch touches[touch_count];

// USB MIDI object
Adafruit_USBD_MIDI usb_midi;

// Create a new instance of the Arduino MIDI Library,
// and attach usb_midi as the transport.
MIDI_CREATE_INSTANCE(Adafruit_USBD_MIDI, usb_midi, usbMIDI);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

const uint16_t pentatonicTable[54] = { 0,1,3,6,8,10,13,15,18,20,22,25,27,30,32,34,37,39,42,44,46,49,51,54,56,58,61,63,66,68,70,73,75,78,80,82,85,87,90,92,94,97,99,102,104,106,109,111,114,116,118,121,123,126 };

u_int8_t midiChannelA = 1;  //The channel we send MIDI messages to
u_int8_t midiChannelB = 2;  //The channel we send MIDI messages to

const u_int8_t controlChannel = 16; //The MIDI channel we are listing on for commands

bool debug = false;

int channel,note;

u_int8_t transpose = 24;

int scale = 1 ; //Defaults to chromatic ( 0), 1 = pentatonic

bool calibrated = 0;

int controlNo1 = 10;
int controlNo2 = 11;
int controlNo3 = 12;

int cctNo = 14;

int split = 127;

bool enablePot0 = false;
bool enablePot1 = false;
bool enablePot2 = false;

bool aftEnable = true;
bool cctEnable = true;
bool noteEnable = true;

int lastAftertouch;

void setup() {

   // Select the correct ADC resolution
  FilteredAnalog<>::setupADC();
  analog0.resetToCurrentValue();
  analog1.resetToCurrentValue();
  analog2.resetToCurrentValue();
 
  if(debug){
  Serial.begin(115200);
  Serial.println("PicoTouch");
  }

  MIDI.setHandleNoteOn(handleNoteOn);  // Put only the name of the function
  usbMIDI.setHandleNoteOn(handleNoteOn);

  MIDI.setHandleControlChange(handleControlChange);
  usbMIDI.setHandleControlChange(handleControlChange);

    // Do the same for NoteOffs
  MIDI.setHandleNoteOff(handleNoteOff);
  usbMIDI.setHandleNoteOff(handleNoteOff);

    // Initialize MIDI, and listen to all MIDI channels
  // This will also call usb_midi's begin()
  MIDI.begin(MIDI_CHANNEL_OMNI);
  usbMIDI.begin(MIDI_CHANNEL_OMNI);

  pinMode(LED_BUILTIN, OUTPUT);

  for (int i = 0; i < touch_count; i++) {
    touches[i].begin( touch_pins[i] );
  }
  delay(2000);
  doCalibrate();
  calibrated = 1;
  
}

void loop() {
  if(BOOTSEL) doCalibrate();
  if(analog0.update() && enablePot0){
    if(debug){
      Serial.print("Pot 0 value = ");
      Serial.println(map(analog0.getValue(),0, 4095,0,127));
    }
    MIDI.sendControlChange(controlNo1, map(analog0.getValue(),0, 4095,0,127), midiChannelA);
    usbMIDI.sendControlChange(controlNo1, map(analog0.getValue(),0, 4095,0,127), midiChannelA);
  }
  if(analog1.update() && enablePot1){
    if(debug){
      Serial.print("Pot 1 value = ");
      Serial.println(map(analog1.getValue(),0, 4095,0,127));
    }
    MIDI.sendControlChange(controlNo2, map(analog1.getValue(),0, 4095,0,127), midiChannelA);
    usbMIDI.sendControlChange(controlNo2, map(analog1.getValue(),0, 4095,0,127), midiChannelA);
  }
  if(analog2.update() && enablePot2){
    if(debug){
      Serial.print("Pot 2 value = ");
      Serial.println(map(analog2.getValue(),0, 4095,0,127));
    }
    MIDI.sendControlChange(controlNo3, map(analog2.getValue(),0, 4095,0,127), midiChannelA);
    usbMIDI.sendControlChange(controlNo3, map(analog2.getValue(),0, 4095,0,127), midiChannelA);
  }

  for ( int i = 0; i < touch_count; i++) {
    touches[i].update();
    if(touches[i].touched()){
      int touchval = touches[i].raw_value / 75;
      if (touchval > 127) touchval = 127;
      if (touchval!=lastAftertouch){
        if(aftEnable){
          channel = midiChannelA;
      if (note > split-transpose) channel = midiChannelB;
      MIDI.sendAfterTouch(touchval,channel);
      usbMIDI.sendAfterTouch(touchval,channel);
        }
        if(cctEnable){
      MIDI.sendControlChange(cctNo, touchval, channel);
      usbMIDI.sendControlChange(cctNo, touchval, channel);
        }
      lastAftertouch = touchval;
      delay(10);
      }
    }
    if ( touches[i].pressed() ) {
      touch_velocity[i]= touches[i].raw_value - touches[i].threshold;
      if(debug){
      Serial.print("Pin pressed ");
      Serial.println( touches[i].pin );     
      }
      
      note = i+transpose;
      channel = midiChannelA;
      if(debug) {
        Serial.print("Note = ");
        Serial.println(note);
      }

      if (note > split-transpose) {
        channel = midiChannelB;
        if(debug) {
          Serial.print("Split to channel ");
          Serial.println(channel);
        }
      }

      if(scale == 0 && noteEnable){
      MIDI.sendNoteOn(note, touch_velocity[i], channel);
      usbMIDI.sendNoteOn(note, touch_velocity[i], channel);
      }
      if(scale == 1 && noteEnable) {
      MIDI.sendNoteOn(pentatonicTable[note], touch_velocity[i], channel);
      usbMIDI.sendNoteOn(pentatonicTable[note], touch_velocity[i], channel);
      }
      digitalWrite(LED_BUILTIN, HIGH);
    }

    if ( touches[i].released() ) {
      if(debug){
      Serial.print("Pin release ");
      Serial.println( touches[i].pin );
      }

      note = i+transpose;
      channel = midiChannelA;
      if (note > split-transpose) channel = midiChannelB;

      if(scale == 0 && noteEnable){
      MIDI.sendNoteOff(note, 0, channel);
      usbMIDI.sendNoteOff(note, 0, channel);
      }
      if(scale == 1 && noteEnable){
      MIDI.sendNoteOff(pentatonicTable[note], 0, channel);
      usbMIDI.sendNoteOff(pentatonicTable[note], 0, channel);
      }
      digitalWrite(LED_BUILTIN, LOW);
    }

  }
  MIDI.read(); // read and discard any incoming MIDI messages
  usbMIDI.read();
  delay(5);
}

void doCalibrate(){
  for (int i = 0; i < touch_count; i++) {
            digitalWrite(LED_BUILTIN, HIGH);
            touches[i].recalibrate();
            touch_threshold[i] = touches[i].threshold;
            if(debug)Serial.println(touch_threshold[i]);
          }
          if(debug)Serial.println("Calibrated");
          delay(1000);
          digitalWrite(LED_BUILTIN, LOW);
}
