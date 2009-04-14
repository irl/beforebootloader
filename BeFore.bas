CLS
COLOR , 1
PRINT "ShiftOut - BeFore" + SPACE$(80 - 17)
COLOR , 0
PRINT
PRINT "This program is freely available from http://www.shiftout.com/projects/BeFore"
PRINT "and is licensed under the GNU GPL. (C) Iain Learmonth 2008"
PRINT
PRINT "At the prompt, enter the number of the operating system you would like to load:"
PRINT "1) Windows"
PRINT "2) BeOS Personal Edition"
PRINT
LINE INPUT "bf>", i$
IF i$ = "1" THEN
PRINT "Continuing to load Windows....."
END IF
IF i$ = "2" THEN
PRINT "Loading BeOS....."
SHELL "CD \BEOS"
SHELL "C:\BEOS\LOADBEOS.COM"
END IF
END

