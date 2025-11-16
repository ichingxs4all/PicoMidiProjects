void setupLCD(){
  lcd.init();                      // initialize the lcd 
  lcd.backlight();
  lcd.clear();
  lcd.print("Pico MIDI Box V1");
  delay(2000);
  lcd.clear();
  lcd.blink_on();
  lcd.cursor_on();
  enterMode();
}

void enterMode(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Enter PGC no.");
  lcd.setCursor(0,1);
  lcd.print(pgnumber);
  lcd.setCursor(0,1);
}