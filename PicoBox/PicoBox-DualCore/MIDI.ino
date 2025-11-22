void setupMIDI(){
  // Initialize MIDI, and listen to all MIDI channels
  // This will also call usb_midi's begin()
  MIDI.begin(MIDI_CHANNEL_OMNI);
  usbMIDI.begin(MIDI_CHANNEL_OMNI);
}

void sendPGC(int number, int channel){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("PGC on channel ");
  lcd.print(channel);
  lcd.setCursor(0,1);
  lcd.print(number);
  lcd.print(" sended");

  if(debug){
  Serial.print(" Program change ");
  Serial.print(number);
  Serial.print(" on channel ");
  Serial.println(channel);
  }


  MIDI.sendProgramChange(number, channel);
  usbMIDI.sendProgramChange(number, channel);
  digit = 0;
  lastChannel=channel;
  delay(2000);
  enterMode();
}