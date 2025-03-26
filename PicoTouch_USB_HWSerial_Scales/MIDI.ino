void handleNoteOn(byte channel, byte pitch, byte velocity) {
  // Do whatever you want when a note is pressed.

  // Try to keep your callbacks short (no delays ect)
  // otherwise it would slow down the loop() and have a bad impact
  // on real-time performance.
}

void handleNoteOff(byte channel, byte pitch, byte velocity) {
  // Do something when the note is released.
  // Note that NoteOn messages with 0 velocity are interpreted as NoteOffs.
}

void handleControlChange(byte channel, byte number, byte value) {
  if (channel == controlChannel) {
    switch (number) {

      case 16:  //scale
        if (value == 0) scale = 0;
        if (value == 1) scale = 1;
        break;

      case 17:  //transpose
        transpose = value;
        if (transpose > 106) transpose = 106;
        break;

      case 18:  //Set MIDI out channel
        midiChannel = value;
        if (midiChannel > 15) midiChannel = 15;
        break;

      case 19:  //Recalibratie Touch pins
        if (value == 1 && calibrated == 0) {
          for (int i = 0; i < touch_count; i++) {
            digitalWrite(LED_BUILTIN, HIGH);
            touches[i].recalibrate();
          }
          calibrated = 1;
        }
        if (value == 0 && calibrated == 1) calibrated = 0;
        digitalWrite(LED_BUILTIN, LOW);
        break;

       case 20:  //scale
        if (value == 0) MIDI.turnThruOff();
        if (value == 1) MIDI.turnThruOn();
        break;

       case 21:  //set controller no. 
        if (value == 0) enablePot0 = false;
        if (value >  0 ) {
          controlNo1 = value;
          enablePot0 = true;
        }
        break;
        case 22:  //set controller no. 
        if (value == 0) enablePot1 = false;
        if (value >  0 ) {
          controlNo2 = value;
          enablePot1 = true;
        }
        break;
        case 23:  //set controller no. 
        if (value == 0) enablePot2 = false;
        if (value >  0 ) {
          controlNo3 = value;
          enablePot2 = true;
        }
        break;


      default:
        break;
    }
  }
}