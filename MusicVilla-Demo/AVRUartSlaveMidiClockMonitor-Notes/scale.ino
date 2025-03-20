/*
Major
C, D, E, F, G, A, B

Minor
C, D, Eb, F, G, Ab, Bb

Harmonic minor
C, D, D#, F, G, G#, B

Melodic minor
C, D, D#, F, G, A, B

Major Pentatonic
C, D, E, G, A

Minor Pentatonic
C, Eb, F, G, Bb

*/

int numNotes;


#define CHROMATIC_NOTES 128

const int sChromaticNotes[CHROMATIC_NOTES] =

// Set the MIDI codes for the notes to be played
{
  0, 1, 2, 3, 4, 5, 6, 7, 8, //C-1 to G0
  9, 10, 11, 12,  13, 14, 15, 16, 17, 18, 19, 20, // A- to G#0
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, // A0 to G#1
  33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, // A1 to G#2
  45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, // A2 to G#3
  57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, // A3 to G#4
  69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, // A4 to G#5
  81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, // A5 to G#6
  93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, // A6 to G#7
  105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, // A7 to G#8
  117, 118, 119, 120 , 121, 122, 123, 124, 125, 126, 127 //A8 to D9
};



//#define PENTATONIC_NOTES 54

// provides an index of pentatonic notes in the midi note table

// const int sPentatonicNotes[PENTATONIC_NOTES] =
// {
//   0,   2,  4,  7,  9, 
//   12, 14, 16, 19, 21, 
//   24, 26, 28, 31, 33,
//   36, 38, 40, 43, 45,
//   48, 50, 52, 55, 57,
//   60, 62, 64, 67, 69,
//   72, 74, 76, 79, 81,
//   84, 86, 88, 91, 93,
//   96, 98,100,103,105,
//  108,110,112,115,117,
//  120,122,124,127 
// };

#define PENTATONIC_NOTES 128
const int sPentatonicNotes[PENTATONIC_NOTES] =
{
   0, 0, 2, 2, 4, 4, 4, 7, 7, 9, 9, 9, 
  12,12,14,14,16,16,16,19,19,21,21,21, 
  24,24,26,26,28,28,28,31,31,33,33,33,
  36,36,38,38,40,40,40,43,43,45,45,45,
  48,48,50,50,52,52,52,55,55,57,57,57,
  60,60,62,62,64,64,64,67,67,69,69,69,
  72,72,74,74,76,76,76,79,79,81,81,81,
  84,84,86,86,88,88,88,91,91,93,93,93,
  96,96,98,98,100,100,100,103,103,105,105,105,
 108,108,110,110,112,112,112,115,115,117,117,117,
 120,120,122,122,124,124,124,127 
};



#define CMBLUES_NOTES 128

// provides an index of pentatonic notes in the midi note table

const int sCMBluesNotes[CMBLUES_NOTES] =
{
  0, 0, 0,  3, 3,  5,  6,  7, 7, 7, 10, 10,        // 12
  12, 12, 12, 15, 15, 17, 18, 19, 19, 19, 22, 22,  // 24
  24, 24, 24, 27, 27, 29, 30, 31, 31, 31, 34, 34,    // 36
  36, 36, 36, 39, 39, 41, 42, 43, 43, 43, 46, 46,    // 48
  48, 48, 48, 51, 51, 53, 54, 55, 55, 55, 58, 58,  // 60
  60, 60, 60, 63, 63, 65, 66, 67, 67, 67, 70, 70,  // 72   
  72, 72, 72, 75, 75, 77, 78, 79, 79, 79, 82, 82, // 84
  84, 84, 84, 87, 87, 89, 90, 91, 91, 91, 94, 94,  // 96
  96, 96, 96, 99, 99,101,102,103, 103, 103, 106, 106,  // 108
  108, 108, 108, 111, 111, 113,114,115, 115, 115, 118, 118,  // 120
  120,120, 120, 123, 123, 125,126,127       // 128
};


int setScale(int value, int scale, int transPose){


int note,playing;

switch (scale)
{
  case 0:
  numNotes = CHROMATIC_NOTES;
  //playing = map(value, 4095,tresHold, 0, numNotes - 1);
  note = sChromaticNotes[value + transPose];
 changeScale = true;
  break;
   case 1:
  numNotes = PENTATONIC_NOTES;
  //playing = map(value,4095, tresHold, 0, numNotes - 1);
  note = sPentatonicNotes[value + transPose];
  changeScale = true;
  break;
  case 2:
  numNotes = CMBLUES_NOTES;
  //playing = map(value, 4095,tresHold, 0, numNotes - 1);
  note = sCMBluesNotes[value+ transPose];
  changeScale = true;
  break;
  default:
  numNotes = CHROMATIC_NOTES;
  //playing = map(value, tresHold, 4095, 0, numNotes - 1);
  note = sChromaticNotes[value + transPose];
  changeScale = true;
  break;
}
if (note > 127) note =127;
if(note<0) note = 0;
return note;
}