/*
    Simple Password generator in Dart
    Created in case I'm too bothered to think of a strong password myself.

    P.S: Un-comment everything to add symbols as well.
*/

import 'dart:math';

void main()
{
  const lowerChar = "abcdefghijklmnopqrstuvwxyz";
  const upperChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const numChar = "0123456789";
  const passLength = 12;
  Random randomVar = new Random.secure();
  var charKeys = new List(4);
  var createdPass = "";
  charKeys[0] = randomVar.nextBool();
  charKeys[1] = randomVar.nextBool();
  charKeys[2] = randomVar.nextBool();
  print(charKeys);

 while(createdPass.length < passLength)
  {
    if (charKeys[0] == true)
    {
      charKeys[3] = randomVar.nextInt(lowerChar.length);
      createdPass = createdPass + lowerChar[charKeys[3]];
    }
    if (charKeys[1] == true)
    {
      charKeys[3] = randomVar.nextInt(upperChar.length);
      createdPass = createdPass + upperChar[charKeys[3]];
    }
    if (charKeys[2] == true)
    {
      charKeys[3] = randomVar.nextInt(numChar.length);
      createdPass = createdPass + numChar[charKeys[3]];
    }
    charKeys[0] = randomVar.nextBool();
    charKeys[1] = randomVar.nextBool();
    charKeys[2] = randomVar.nextBool();
  }
  print(createdPass);
}