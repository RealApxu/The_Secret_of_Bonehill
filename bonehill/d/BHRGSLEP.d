BEGIN ~BHRGSLEP~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END