BEGIN ~BHBALMOR~

IF ~IfValidForPartyDialogue("Fabio")
NumberOfTimesTalkedTo(0)
AreaCheck("BH2018")
Global("BHBardFree","GLOBAL",0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXTERN ~BFABIO~ 12
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXTERN ~BFABIO~ 13
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXTERN ~BFABIO~ 14
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~SetGlobal("BHBardAskLeave","BH2018",1)
~ EXIT
END

IF ~!IfValidForPartyDialogue("Fabio")
NumberOfTimesTalkedTo(0)
AreaCheck("BH2018")
Global("BHBardFree","GLOBAL",0)
~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("BHBardMakesWait","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 49
END

IF ~OR(3)
Global("BHBardAskLeave","BH2018",1)
Global("BHBardMakesWait","GLOBAL",1)
Global("BHBardAsksWilbur","BH2018",0)
AreaCheck("BH2018")
~ THEN BEGIN 13
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("BHBardMakesWait","GLOBAL",2)
~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @29
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @34
  IF ~PartyHasItem("BHPLOT01")
~ THEN REPLY @35 GOTO 21
  IF ~~ THEN REPLY @36 GOTO 28
END

IF ~~ THEN BEGIN 21
  SAY @37
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~~ THEN REPLY @40 GOTO 25
END

IF ~~ THEN BEGIN 23
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @43
  IF ~~ THEN REPLY @45 DO ~SetGlobal("BHBardTellsOfWho","GLOBAL",1)
~ JOURNAL @44 GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @46
  IF ~~ THEN REPLY @42 GOTO 24
END

IF ~~ THEN BEGIN 26
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @49
  IF ~~ THEN DO ~SetGlobal("BHBardAsksWilbur","BH2018",1)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @37
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~~ THEN REPLY @40 GOTO 25
END

IF ~~ THEN BEGIN 29
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @52
  IF ~~ THEN EXTERN ~BHWILBUR~ 8
END

IF ~~ THEN BEGIN 31
  SAY @53
  IF ~~ THEN DO ~SetGlobal("BHWilburTells","GLOBAL",2)
SetGlobal("BHBardAsksWilbur","BH2018",3)
~ EXIT
END

IF ~Global("BHBardAsksWilbur","BH2018",4)
!Global("BHWilburLied","GLOBAL",1)
AreaCheck("BH2018")
~ THEN BEGIN 32
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @56
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @57
  IF ~IfValidForPartyDialogue("Fabio")
~ THEN JOURNAL @58 EXTERN ~BFABIO~ 15
  IF ~~ THEN REPLY @59 JOURNAL @58 GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @64
  IF ~Global("BHClericWarnsOfLothar","GLOBAL",1)
~ THEN REPLY @65 GOTO 38
  IF ~~ THEN REPLY @66 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @69
  IF ~~ THEN REPLY @70 GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @73
  IF ~Global("BHAbrahamWarnsParty","GLOBAL",1)
~ THEN REPLY @74 GOTO 43
  IF ~!Global("BHAbrahamWarnsParty","GLOBAL",1)
~ THEN REPLY @75 GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @76
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY @77
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @78
  IF ~~ THEN REPLY @79 GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 46
  IF ~~ THEN REPLY @82 GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @85
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @86
  IF ~~ THEN DO ~SetGlobal("BHBardAsksWilbur","BH2018",5)
~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @87
  IF ~~ THEN REPLY @33 GOTO 20
END

IF ~Global("BHBardAsksWilbur","BH2018",4)
Global("BHWilburLied","GLOBAL",1)
AreaCheck("BH2018")
~ THEN BEGIN 50
  SAY @88
  IF ~~ THEN REPLY @89 GOTO 35
END

IF ~AreaCheck("BH2103")
~ THEN BEGIN 51
  SAY @90
  IF ~~ THEN REPLY @91 EXIT
  IF ~~ THEN REPLY @92 DO ~SetGlobal("BHBardFree","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~Global("BHHolgaTalked","GLOBAL",1)
GlobalLT("BHBardSeeksWilbur","GLOBAL",1)
AreaCheck("BH2018")
~ THEN BEGIN 52
  SAY @93
  IF ~~ THEN REPLY @94 GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @95
  IF ~~ THEN EXTERN ~BHWILLIS~ 4
END

IF ~~ THEN BEGIN 54
  SAY @96
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @97
  IF ~~ THEN REPLY @98 GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @99
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @100
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @101
  IF ~~ THEN REPLY @102 DO ~SetGlobal("BHBardSeeksWilbur","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY @103 DO ~SetGlobal("BHBardSeeksWilbur","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY @104 DO ~SetGlobal("BHBardSeeksWilbur","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 59
  SAY @105
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 60
  SAY @106
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 61
  SAY @107
  IF ~~ THEN GOTO 62
END

IF ~Global("BHBardFree","GLOBAL",1)
AreaCheck("BH2018")
~ THEN BEGIN 62
  SAY @108
  IF ~PartyHasItem("BHPLOT04")
~ THEN REPLY @109 GOTO 64
  IF ~!PartyHasItem("BHPLOT04")
~ THEN REPLY @110 GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @111
  IF ~~ THEN DO ~SetGlobal("BHBardFree","GLOBAL",2)
~ JOURNAL @112 EXIT
END

IF ~~ THEN BEGIN 64
  SAY @113
  IF ~Dead("BHARRNES")
Dead("BHTELLIS")
~ THEN REPLY @114 GOTO 67
  IF ~Dead("BHTellis")
!Dead("BHArrnes")
~ THEN REPLY @115 GOTO 67
  IF ~!Dead("BHTellis")
Dead("BHArrnes")
~ THEN REPLY @116 GOTO 67
  IF ~!Dead("BHTellis")
!Dead("BHArrnes")
~ THEN REPLY @117 GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @118
  IF ~~ THEN DO ~SetGlobal("BHBardFree","GLOBAL",2)
~ EXIT
END

IF ~GlobalLT("BHBardFree","GLOBAL",2)
AreaCheck("BH2018")
~ THEN BEGIN 66
  SAY @119
  IF ~PartyHasItem("BHPLOT04")
~ THEN REPLY @109 GOTO 64
  IF ~!PartyHasItem("BHPLOT04")
~ THEN REPLY @110 GOTO 63
END

IF ~~ THEN BEGIN 67
  SAY @120
  IF ~~ THEN DO ~AddexperienceParty(7500)
SetGlobal("BHBardFree","GLOBAL",2)
~ EXIT
END

IF ~Global("BHBardFree","GLOBAL",2)
~ THEN BEGIN 68
  SAY @121
  IF ~~ THEN REPLY @122 EXIT
END
