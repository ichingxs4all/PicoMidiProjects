void handleNoteOn(byte channel, byte pitch, byte velocity) {

transposeNo = pitch - offSet;

}

void handleNoteOff(byte channel, byte pitch, byte velocity) {

  // Do something when the note is released.
  // Note that NoteOn messages with 0 velocity are interpreted as NoteOffs.
}

void handleControlChange(byte channel, byte control, byte value) {
switch (control){

  case 0: 
    transposeNo = 64 - value;
    break;
  case 1: 
    if(value >0 && value < 32)  {
      scaleNo = 0;
    }
    if(value >32 && value < 64) {
      scaleNo = 1;
    }
    if(value >64 && value < 96) {
      scaleNo = 2;
    }
    break;
  default:
    // comando(s)
    break;
}
}