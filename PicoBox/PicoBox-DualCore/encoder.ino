void setupEncoder(){
  pinMode(SW,INPUT_PULLUP);
  encoder.begin();
  encoder.setMode(2);
}

void checkEncoder(){
  count = encoder.getCount();
  if(count != prevCount) {
    if(count > 127 ) count = 127;
    if(count < 0 ) count = 0;

    if(debug)Serial.println(count);
    
    lcd.setCursor(0,1);
    lcd.print(count);
    pgnumber = count;
    prevCount = count; 
  }
}

void checkSwitch(){
  if(digitalRead(SW)==LOW){
  sendPGC(pgnumber,lastChannel);
  MIDI.sendNoteOn(note, velocity, lastChannel);
  delay(200);
  MIDI.sendNoteOn(note, 0, lastChannel);
 }
}