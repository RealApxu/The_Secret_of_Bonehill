BEGIN ~BHGRELUS~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~IfValidForPartyDialogue("Xzar")~ THEN GOTO 7
  IF ~IfValidForPartyDialogue("Edwin")~ THEN GOTO 8
  IF ~~ THEN REPLY @8 GOTO 15
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~IfValidForPartyDialogue("Fabio")~ THEN GOTO 16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN EXTERN ~%XZAR_JOINED%~ BARONXZAR
END

IF ~~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN EXTERN ~%EDWIN_JOINED%~ BARONEDWIN
END

IF ~~ THEN BEGIN 9
  SAY @14
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @15
  IF ~~ THEN GOTO 4
END

IF ~True()~ THEN BEGIN 11
  SAY @16
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @17
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @18
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @20
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 16
  SAY @21
  IF ~~ THEN EXTERN ~BHFABIOJ~ 0
END

APPEND ~%XZAR_JOINED%~

IF ~~ THEN BEGIN BARONXZAR 
  SAY @22
  IF ~~ THEN EXTERN ~BHGRELUS~ 9
END

END

APPEND ~%EDWIN_JOINED%~

IF ~~ THEN BEGIN BARONEDWIN
  SAY @23
  IF ~~ THEN EXTERN ~BHGRELUS~ 9
END

END