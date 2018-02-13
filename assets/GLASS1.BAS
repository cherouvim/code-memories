SCREEN 13
xx = 1
yy = 1
xxx = 1
yyy = 1
DO WHILE INKEY$ = ""
i = i + 1
xxx = xxx + xx
yyy = yyy + yy
IF xxx > 270 OR xxx < 1 THEN xx = -xx
IF yyy > 150 OR yyy < 1 THEN yy = -yy
FOR y = 1 TO 50
FOR x = 1 TO 50
PSET (x + xxx, y + yyy), POINT(x + xxx, y + yyy) + 1
NEXT x
NEXT y
LOOP

