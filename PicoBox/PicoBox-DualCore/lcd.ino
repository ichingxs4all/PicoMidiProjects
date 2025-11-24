void setupLCD() {
  lcd.init();  // initialize the lcd
  lcd.backlight();
  lcd.clear();
  lcd.print("Pico MIDI Box V1");
  delay(2000);
  lcd.clear();
  lcd.blink_on();
  lcd.cursor_on();
  enterMode();
}

void enterMode() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Enter PGC no.");
  printPadded(pgnumber);
}

void printPadded(int p) {
  lcd.setCursor(0, 1);
  sprintf(paddedPgNumber, "%03d", p);
  lcd.print(paddedPgNumber);
  lcd.setCursor(0, 1);
}