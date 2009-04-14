start:
PRINT "[BeFore] Press any key to show menu..."
start = TIMER
DO
IF INKEY$ <> "" THEN GOTO menu
LOOP UNTIL TIMER >= start + 3
END
menu:
CLS
COLOR , 1
PRINT "ShiftOut - BeFore 0.3" + SPACE$(80 - 21)
COLOR , 0
PRINT
PRINT "This program is freely available from http://www.shiftout.com/projects/BeFore"
PRINT "and is licensed under the GNU GPL. (C) Iain Learmonth 2008"
PRINT
PRINT "At the prompt, enter the number of the operating system you would like to load:"
PRINT "1) Windows"
PRINT "2) MS-DOS Prompt"
PRINT "3) BeOS Personal Edition"
PRINT
LINE INPUT "bf>", i$
IF i$ = "1" THEN
PRINT "Continuing to load Windows....."
END IF
IF i$ = "2" THEN
DO
SHELL
GOTO menu
LOOP
END IF
IF i$ = "3" THEN
PRINT "Loading BeOS....."
SHELL "CD \BEOS"
SHELL "C:\BEOS\LOADBEOS.COM"
END IF
END

