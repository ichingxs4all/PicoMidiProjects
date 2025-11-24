void checkKeys() {

  while (customKeypad.available()) {
    keypadEvent e = customKeypad.read();
    int key = e.bit.KEY;
    if (e.bit.EVENT == KEY_JUST_PRESSED) {
      if (key >= 48 && key <= 57) {
        number[digit] = key - 48;
        if (number[0] > 1) number[0] = 1;
        if (number[0] == 1 && number[1] > 2) {
          number[1] = 2;
        }
        if (debug) Serial.print(number[digit]);
        lcd.setCursor(digit, 1);
        lcd.print(number[digit]);
        digit++;
        if (digit > 2) digit = 2;
        pgnumber = 100 * number[0] + 10 * number[1] + number[2];
      } else {
        pgnumber = 100 * number[0] + 10 * number[1] + number[2];
        switch (key) {
          case 65:
            sendPGC(pgnumber, chA);
            break;
          case 66:
            sendPGC(pgnumber, chB);
            break;
          case 67:
            sendPGC(pgnumber, chC);
            break;
          case 68:
            sendPGC(pgnumber, chD);
            break;
          default:
            break;
        }
      }
    }
  }
}

void checkKeys2() {

  while (customKeypad.available()) {

    keypadEvent e = customKeypad.read();
    int key = e.bit.KEY;

    if (e.bit.EVENT == KEY_JUST_PRESSED) {
      if (key >= 48 && key <= 57) {
        number[digit] = key - 48;
        lcd.print(number[digit]);
      }
    }
    if (e.bit.EVENT == KEY_JUST_RELEASED) {
        digit++;
        if (digit > 2) {
          digit = 0;
          lcd.setCursor(digit, 1);
        }
    }

    switch (key) {
      case 65:
        sendPGC(pgnumber, chA);
        break;
      case 66:
        sendPGC(pgnumber, chB);
        break;
      case 67:
        sendPGC(pgnumber, chC);
        break;
      case 68:
        sendPGC(pgnumber, chD);
        break;
      default:
        break;
    }
  }
  delay(20);
}
