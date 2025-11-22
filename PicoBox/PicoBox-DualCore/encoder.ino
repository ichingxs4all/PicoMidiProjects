void setupEncoder(){
  pinMode(SW,INPUT_PULLUP);
  encoder.begin();
  encoder.setMode(2);
}

void checkEncoder(){
  pgnumber = 100 * number[0] + 10 * number[1] + number[2];
  encoder.offset= pgnumber;
  count = encoder.getCount();
  if(count != prevCount) {
    if(count > 127 ) count = 127;
    if(count < 0 ) count = 0;
    if(debug)Serial.println(count);
    lcd.setCursor(0, 1);
    lcd.print(count);
    lcd.setCursor(0,1);
    pgnumber = count;
    prevCount = count;
  }
 if(digitalRead(SW)==LOW){
  pgnumber = count;
  sendPGC(pgnumber, lastChannel);
 }
}