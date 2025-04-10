/** 
 * This example demonstrates the use of MIDI Control Change potentiometers that
 * can be used for changing effect parameters, volumes, pan and balance
 * controls, etc. It can control almost any knob in your DAW software. 
 * This example shows how to define multiple potentiometers using an array.
 *
 * @boards  AVR, AVR USB, Nano Every, Due, Nano 33 IoT, Nano 33 BLE, UNO R4, Teensy 3.x
 * 
 * Connections
 * -----------
 * 
 * - A0: wiper of the first potentiometer
 * - A1: wiper of the second potentiometer
 * - ...
 * - A5: wiper of the sixth potentiometer
 * 
 * Connect the left terminal of the potentiometers to ground, and the right one
 * to V<sub>CC</sub>.
 * 
 * Behavior
 * --------
 * 
 * - When you turn a potentiometer, you should receive MIDI Control Change
 *   events, with a value between 0 and 127.
 * - The analog inputs are filtered, so there shouldn't be any noise on the 
 *   position. If there is, check your wiring, and make sure that the resistance
 *   of the potentiometers isn't too high (10 kΩ is ideal).
 * 
 * Mapping
 * -------
 * 
 * Select the Arduino as a custom MIDI controller in your DAW, and use the 
 * MIDI learn option to assign the potentiometers to a function.
 * 
 * Written by PieterP, 2019-08-13  
 * https://github.com/tttapa/Control-Surface
 */

#include <Control_Surface.h> // Include the Control Surface library

// Instantiate a MIDI over USB interface.
USBMIDI_Interface usbmidi;
HardwareSerialMIDI_Interface serialmidi {Serial1, MIDI_BAUD};
// Create a MIDI pipe factory to connect the MIDI interfaces to Control Surface
BidirectionalMIDI_PipeFactory<2> pipes;

// Instantiate an array of CCPotentiometer objects
CCPotentiometer potentiometers[] {
  {A0,        // Analog pin connected to potentiometer 1
   0x07},     // Controller number of the first potentiometer
  {A1,        // Analog pin connected to potentiometer 2
   0x47},     // Controller number of the second potentiometer
  {A2, 0x4A}, // Etc.
  //{A3, 0x13},
  //{A4, 0x14},
  //{A5, 0x15},
};

void setup() {
   // Manually connect the MIDI interfaces to Control Surface
  //Control_Surface | pipes | usbmidi;
  Control_Surface | pipes | serialmidi;
  Control_Surface.begin(); // Initialize Control Surface
}

void loop() {
  Control_Surface.loop(); // Update the Control Surface
}