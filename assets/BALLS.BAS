DECLARE SUB WAITSYNC ()
RANDOMIZE TIMER
PRINT "This is a fucking program that demonstrates the algorithm of controling lots of balls. I created it using Quick Basic 7.1, and that's the reason that it's very"
PRINT "slow, but that doesn't matter, cause I'm goin' to rewrite the code to assembler,and it will kick ass!!!"
PRINT
PRINT "Morales"
PRINT
INPUT "enter number of balls ", balls
IF balls < 0 OR balls <> INT(balls) THEN END
SCREEN 12
CIRCLE (4, 4), 2, 15
PAINT (4, 4), 14, 15
DIM A(7)
GET (1, 1)-(7, 7), A
LINE (1, 1)-(7, 7), 0, BF
DIM X(balls)
DIM Y(balls)
DIM XX(balls)
DIM YY(balls)
FOR I = 1 TO balls
X(I) = RND * 620 + 10
Y(I) = RND * 460 + 10
XX(I) = RND * 2 - 1
YY(I) = RND * 2 - 1
NEXT I
LINE (0, 0)-(639, 479), 15, B
DO WHILE INKEY$ = ""
T = T + 1
FOR I = 1 TO balls
'IF T MOD 10 = 0 THEN LOCATE 1, 1: PRINT T
IF T > 1000 AND T < 2000 THEN YY(I) = YY(I) + .01: IF YY(I) > 1 THEN YY(I) = 1
IF T > 2000 AND T < 3000 THEN XX(I) = XX(I) - .01: IF XX(I) < -1 THEN XX(I) = -1
IF T > 3000 AND T < 4000 THEN YY(I) = YY(I) - .01: IF YY(I) < -1 THEN YY(I) = -1
IF T > 4000 AND T < 5000 THEN XX(I) = XX(I) + .01: IF XX(I) > 1 THEN XX(I) = 1
IF T > 5000 THEN T = 0
IF X(I) > 631 THEN XX(I) = -XX(I)
IF X(I) < 2 THEN XX(I) = -XX(I)
IF Y(I) > 471 THEN YY(I) = -YY(I)
IF Y(I) < 2 THEN YY(I) = -YY(I)
X(I) = X(I) + XX(I)
Y(I) = Y(I) + YY(I)
PUT (X(I), Y(I)), A, PSET
NEXT I
C = C + 1
'X = INT(COS(C / 10) * 20 + 40)
'Y = INT(SIN(C / 20) * 10 + 40)
'Z = INT(SIN(C / 10) * 20 + 40)
'PALETTE 0, X * 65536 + X * 256 + X
'IF X = 50 THEN X = 0 ELSE X = 50
'WAITSYNC
'OUT &H3C8, 0
'OUT &H3C9, X
'OUT &H3C9, X
'OUT &H3C9, X
 


LOOP

SUB WAITSYNC
WAITS:
IF INP(&H3DA) AND 8 = 0 THEN GOTO WAITS
WAITS2:
IF INP(&H3DA) AND 8 = 0 THEN GOTO WAITS2

END SUB

