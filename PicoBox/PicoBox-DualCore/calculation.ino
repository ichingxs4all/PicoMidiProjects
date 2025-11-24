void doCalculation(){
  pgnumber = 100 * number[0] + 10 * number[1] + number[2];
  if (pgnumber > 127){
    pgnumber = 127;
    number[0] = 1;
    number[1] = 2;
    number[2] = 7;
  }
}
