BEGIN ~BHPRISKA~

IF ~AreaCheck("BH2019")~ THEN BEGIN 0
  SAY @1
  IF ~NumberOfTimesTalkedTo(0)~ THEN REPLY @2 GOTO 1
  IF ~!NumberOfTimesTalkedTo(0)~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~PartyGoldGT(4)~ THEN REPLY @7 DO ~TakePartyGold(5) SetGlobal("BHPartyNicetoPriska","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~Global("BHPartyNicetoPriska","GLOBAL",1)~ THEN REPLY @10 GOTO 4
  IF ~!Global("BHPartyNicetoPriska","GLOBAL",1)~ THEN REPLY @10 GOTO 5
  IF ~Global("BHPartyNicetoPriska","GLOBAL",1)~ THEN REPLY @11 GOTO 6
  IF ~!Global("BHPartyNicetoPriska","GLOBAL",1)~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~GlobalGT("BHHiredAssassin","GLOBAL",0)~ THEN REPLY @15 GOTO 8
  IF ~Global("BHHiredAssassin","GLOBAL",0)~ THEN REPLY @15 DO ~SetGlobal("BHPriskaTellsOnGuild","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @24
  IF ~~ THEN JOURNAL @25 EXIT
END

IF ~AreaCheck("BH2103")~ THEN BEGIN 13
  SAY @1
  IF ~Global("BHPartyNicetoPriska","GLOBAL",1)~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @30 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 19
END

IF ~~ THEN BEGIN 16
  SAY @33
  IF ~~ THEN REPLY @34 EXIT
  IF ~~ THEN REPLY @35 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @36
  IF ~~ THEN DO ~SetGlobal("BHPriskaFree","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @37
  IF ~~ THEN REPLY @35 GOTO 17
END

IF ~~ THEN BEGIN 19
  SAY @38
  IF ~~ THEN REPLY @35 GOTO 17
END