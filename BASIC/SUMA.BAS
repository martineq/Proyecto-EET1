comienzo:
CLS
SCREEN 12
COLOR 14
DIM v(300)
DIM j(300)
DIM t(300)
r = 0

 PRINT "Cuantas cifras tiene el primer n£mero"
 INPUT a
 FOR i = a TO 1 STEP -1
   PRINT "Ingrese los n£meros de a uno"
   INPUT v(i)
 NEXT i
                                                   

 PRINT "Cuantas cifras tiene el segundo n£mero"
 INPUT b
 FOR i = b TO 1 STEP -1
   PRINT "Ingrese los n£meros de a uno"
   INPUT j(i)
 NEXT i

 IF a > b THEN
  c = a
 ELSE
  c = b
 END IF

FOR i = 1 TO c
 IF v(i) + j(i) + r > 9 THEN
   t(i) = v(i) + j(i) + r - 10
   r = 1
 ELSE
   t(i) = v(i) + j(i) + r
   r = 0
 END IF
NEXT i
COLOR 12
PRINT "el resultado es";
FOR i = c TO 1 STEP -1
 PRINT t(i);
NEXT i




