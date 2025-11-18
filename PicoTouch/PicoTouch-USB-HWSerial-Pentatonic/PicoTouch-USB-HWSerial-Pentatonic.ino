/*
  DESCRIPTION
  ====================
  Simple example of the TouchyTouch library showing the .pressed() and .released() methods.

  Set touch_pins to the pins to act as touch sensors.
  These pins must have a 1M pull-down resistor.

*/
#include <Adafruit_TinyUSB.h> // Set USB Stack to Adafruit TinyUSB in Tools menu
#include <MIDI.h> // MIDI Library
#include "TouchyTouch.h"

const int touch_pins[] = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 };
const int touch_count = sizeof(touch_pins) / sizeof(int);

TouchyTouch touches[touch_count];

// USB MIDI object
Adafruit_USBD_MIDI usb_midi;

// Create a new instance of the Arduino MIDI Library,
// and attach usb_midi as the transport.
MIDI_CREATE_INSTANCE(Adafruit_USBD_MIDI, usb_midi, usbMIDI);
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

const uint16_t pentatonicTable[54] = { 0,1,3,6,8,10,13,15,18,20,22,25,27,30,32,34,37,39,42,44,46,49,51,54,56,58,61,63,66,68,70,73,75,78,80,82,85,87,90,92,94,97,99,102,104,106,109,111,114,116,118,121,123,126 };

const u_int8_t channel = 1;

const bool debug = false;

u_int8_t transpose = 12;

void setup() {
  if(debug){
  Serial.begin(115200);
  Serial.println("TouchyTouch simple_debounce");
  }
    // Initialize MIDI, and listen to all MIDI channels
  // This will also call usb_midi's begin()
  MIDI.begin(MIDI_CHANNEL_OMNI);
  usbMIDI.begin(MIDI_CHANNEL_OMNI);

  pinMode(LED_BUILTIN, OUTPUT);

  for (int i = 0; i < touch_count; i++) {
    touches[i].begin( touch_pins[i] );
  }

}

void loop() {
  for ( int i = 0; i < touch_count; i++) {
    touches[i].update();
    if ( touches[i].pressed() ) {
      if(debug){
      Serial.print("Pin pressed ");
      Serial.println( touches[i].pin );
      Serial.println( touches[i].raw_value );
      }
      MIDI.sendNoteOn(pentatonicTable[i+transpose], 100, channel);
      usbMIDI.sendNoteOn(pentatonicTable[i+transpose], 100, channel);
      digitalWrite(LED_BUILTIN, HIGH);
    }

    if ( touches[i].released() ) {
      if(debug){
      Serial.print("Pin release ");
      Serial.println( touches[i].pin );
      }
      MIDI.sendNoteOff(pentatonicTable[i+transpose], 100, channel);
      usbMIDI.sendNoteOff(pentatonicTable[i+transpose], 100, channel);
      digitalWrite(LED_BUILTIN, LOW);
    }

  }
  MIDI.read(); // read and discard any incoming MIDI messages
  usbMIDI.read();
}
