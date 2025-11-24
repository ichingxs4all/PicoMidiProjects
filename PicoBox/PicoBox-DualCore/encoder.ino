void setupEncoder() {
  pinMode(SW, INPUT_PULLUP);
  encoder.begin();
  encoder.setMode(2);
}

void checkEncoder() {
  count = encoder.getCount();

  if (count != prevCount) {
  /**
   * omdat we de count van de encoder niet kunnen zetten
   * zijn we eigenlijk alleen geinteresseerd in of we rechtsom (count>prevCount)
   * of linksom draaien.
   */
    if (count > prevCount) {
      pgnumber++;
    } else {
      pgnumber--;
    }
    // clamp pgnumber tussen 0 en 127
    pgnumber = min(127, max(pgnumber, 0));
    if (debug) Serial.println(pgnumber);
    
    // functie in lcd om makkelijk een zeropadded nummer te maken. hand
    printPadded(pgnumber);

    prevCount = count;
  }
}

void checkSwitch() {
  if (digitalRead(SW) == LOW) {
    sendPGC(pgnumber, lastChannel);
    MIDI.sendNoteOn(note, velocity, lastChannel);
    delay(200);
    MIDI.sendNoteOn(note, 0, lastChannel);
  }
}