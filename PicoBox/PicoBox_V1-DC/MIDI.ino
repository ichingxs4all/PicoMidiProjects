void setupMIDI() {
  // Initialize MIDI, and listen to all MIDI channels
  // This will also call usb_midi's begin()
  MIDI.begin(MIDI_CHANNEL_OMNI);
  usbMIDI.begin(MIDI_CHANNEL_OMNI);
}

void sendPGC(int number, int channel) {
  //doCalculation();

  lcd.setCursor(15, 1);
  lcd.print("*");


  if (debug) {
    Serial.print(" Program change ");
    Serial.print(number);
    Serial.print(" on channel ");
    Serial.println(channel);
  }

  MIDI.sendProgramChange(number - 1, channel);
  usbMIDI.sendProgramChange(number - 1, channel);
  lastChannel = channel;
  lastPgNumber = number;

  delay(200);
  enterMode();
}