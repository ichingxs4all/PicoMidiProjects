/* Uart MIDI Sync Slave Box Monitor
 *  
 * This example demonstrates how to create a
 * MIDI slave clock box with 
 * monitor support using oled display
 * 
 * MIDI in must be provided via an opto-isolator to pin RX/D0 
 * Tested on an Arduino Uno.
 *
 * You need the following libraries to make it work
 * - Midi Library
 * - u8g2
 * - uClock
 * This example code is in the public domain.
 *
 * Code by midilab contact@midilab.co
 * Example modified by Jackson Devices contact@jacksondevices.com
 */
#include <MIDI.h>
#include <U8x8lib.h>
#define LED_BUILTIN 4
//
// BPM Clock support
//
#include <uClock.h>

MIDI_CREATE_DEFAULT_INSTANCE();
U8X8 * u8x8;

// MIDI clock, start, stop, note on and note off byte definitions - based on MIDI 1.0 Standards.
#define MIDI_CLOCK 0xF8
#define MIDI_START 0xFA
#define MIDI_STOP  0xFC

float bpm = 126.0;
uint8_t bpm_blink_timer = 1;
uint8_t clock_state = 1;
uint8_t clock_mode = 0;
uint8_t note = 48;

int scaleNo = 1;
bool changeScale = false;
int transposeNo = 0;
int pitch;
int midiChannel = 1;
int offSet = 48;



void handle_bpm_led(uint32_t tick) {
  // BPM led indicator
  if (!(tick % (96)) || (tick == 1)) {  // first compass step will flash longer
    bpm_blink_timer = 8;
    digitalWrite(LED_BUILTIN, HIGH);

  } else if (!(tick % (12))) {  // each quarter led on
    digitalWrite(LED_BUILTIN, HIGH);
    pitch = random (offSet, offSet + 48);
    note = setScale(pitch, scaleNo, transposeNo);
    MIDI.sendNoteOn(note, 100, 1);
    
  
  } else if (!(tick % bpm_blink_timer)) {  // get led off
    digitalWrite(LED_BUILTIN, LOW);
    MIDI.sendNoteOff(note, 0, 1);
    bpm_blink_timer = 1;
  }
  
}

// Internal clock handlers
void onSync24Callback(uint32_t tick) {
  // Send MIDI_CLOCK to external gears
  MIDI.sendRealTime(MIDI_CLOCK);
  handle_bpm_led(tick);
}

void onClockStart() {
  MIDI.sendRealTime(MIDI_START);
}

void onClockStop() {
  MIDI.sendRealTime(MIDI_STOP);
  digitalWrite(LED_BUILTIN, LOW);
}

// External clock handlers
void onExternalClock() {
  uClock.clockMe();
}

void onExternalStart() {
  uClock.start();
}

void onExternalStop() {
  uClock.stop();
  digitalWrite(LED_BUILTIN, LOW);
}

void setup() {
  //
  // MIDI setup
  //
  // Initiate MIDI communications, listen to all channels, disable soft MIDI thru
  MIDI.begin();
  MIDI.setInputChannel(midiChannel);
  MIDI.turnThruOff();
  MIDI.setHandleClock(onExternalClock);
  MIDI.setHandleStart(onExternalStart);
  MIDI.setHandleStop(onExternalStop);

  MIDI.setHandleNoteOn(handleNoteOn);  // Put only the name of the function

  // Do the same for NoteOffs
  MIDI.setHandleNoteOff(handleNoteOff);

  MIDI.setHandleControlChange(handleControlChange);


  // An led to display MIDI reception
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, LOW);

  //
  // OLED setup
  // Please check you oled model to correctly init him
  // The complete list is available here: https://github.com/olikraus/u8g2/wiki/u8g2setupcpp
  //
  //u8x8 = new U8X8_SH1106_128X64_NONAME_HW_I2C(U8X8_PIN_NONE);
  u8x8 = new U8X8_SSD1306_128X64_NONAME_HW_I2C(U8X8_PIN_NONE);
  u8x8->begin();
  u8x8->setFont(u8x8_font_pressstart2p_r); 
  u8x8->clear();
  u8x8->setFlipMode(true);
  u8x8->drawUTF8(0, 0, "uClock"); 

  //
  // uClock Setup
  //
  uClock.init();
  uClock.setOnSync24(onSync24Callback);
  // For MIDI Sync Start and Stop
  uClock.setOnClockStart(onClockStart);
  uClock.setOnClockStop(onClockStop);
  uClock.setMode(uClock.EXTERNAL_CLOCK);
  //uClock.setTempo(136.5);
  //uClock.start();
}

void loop() {
  while(MIDI.read()) {}
  // DO NOT ADD MORE PROCESS HERE AT THE COST OF LOSING CLOCK SYNC
  // Since arduino make use of Serial RX interruption we need to 
  // read Serial as fast as we can on the loop


  if (bpm != uClock.getTempo()) {
    bpm = uClock.getTempo();
    u8x8->drawUTF8(8, 4, String(bpm, 1).c_str());
    u8x8->drawUTF8(8 + 5, 4, "BPM");
    // clear display ghost number for 2 digit
    // coming from 3 digit bpm changes
    if (bpm < 100) {
      u8x8->drawUTF8(8 + 4, 4, " ");
    }
  }
  if (clock_state != uClock.state) {
    clock_state = uClock.state;
    if (clock_state >= 1) {
      u8x8->drawUTF8(0, 4, "Playing");
    } else {
      u8x8->drawUTF8(0, 4, "Stopped ");
    }
  }
  if (clock_mode != uClock.getMode()) {
    clock_mode = uClock.getMode();
    if (clock_mode == uClock.EXTERNAL_CLOCK) {
      u8x8->drawUTF8(10, 0, "Slave ");
    } else {
      u8x8->drawUTF8(10, 0, "Master");
    }
  }

}
