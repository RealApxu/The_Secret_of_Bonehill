BEGIN ~BHFAIR~

IF ~AreaCheck("BH0506")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("BHAdmitTheft","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~~ THEN REPLY @14 EXIT
  IF ~~ THEN REPLY @15 EXIT
  IF ~IfValidForPartyDialogue("FABIO")~ THEN EXTERN ~BHFABIOJ~ 1
END

IF ~~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN DO ~SetGlobal("BHFabioWarning","GLOBAL",1)~ EXTERN ~BHFABIOJ~ 8
END