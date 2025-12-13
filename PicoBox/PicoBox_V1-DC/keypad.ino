void checkKeys() {

  while (customKeypad.available()) {

    keypadEvent e = customKeypad.read();
    int key = e.bit.KEY;

    if (e.bit.EVENT == KEY_JUST_PRESSED) {

      //handle number keys
      if (key >= 48 && key <= 57) {
        // is het de eerste digit die we invoeren na een verstuurd commando of draaien aan de rotary?
        if (digitsEntered == 0) {
          lcd.setCursor(0, 1);
          // clear de waarde die er stonf
          lcd.print("000");
          //  lcd.setCursor(2, 1);
        }
        lcd.setCursor(2, 1);
        number[digitsEntered] = key - 48;
        digitsEntered++;
        digitsToNumber();
        printPadded(pgnumber);
      } else {
        // handle other keys
        switch (key) {
          case 65:  //A
            sendPGC(pgnumber, chA);
            break;
          case 66:  //B
            sendPGC(pgnumber, chB);
            break;
          case 67:  //C
            sendPGC(pgnumber, chC);
            break;
          case 68:  //D
            sendPGC(pgnumber, chD);
            break;
          case 35:  //#
            break;
          case 42:  //*
            break;
          default:
            break;
        }
        resetDigits();
      }
    }

    if (e.bit.EVENT == KEY_JUST_RELEASED) {

      if (key >= 48 && key <= 57) {
        if (digitsEntered > 2) {
          resetDigits();
        }
      }
    }
  }
  delay(20);
}

void resetDigits() {
  digitsEntered = 0;
  number[0] = 0;
  number[1] = 0;
  number[2] = 0;
}

void digitsToNumber() {
  switch (digitsEntered) {
    case 1:
      pgnumber = number[0];
      break;
    case 2:
      pgnumber = number[0] * 10 + number[1];
      break;
    case 3:
      pgnumber = number[0] * 100 + number[1] * 10 + number[2];
      break;
  }
  pgnumber = max(0, min(127, pgnumber));
}