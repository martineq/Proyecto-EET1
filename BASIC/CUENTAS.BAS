X$ = "1"
WHILE X$ <> "Q"
CLS
COLOR 3
LOCATE 2, 10
PRINT "Elija la primer letra de la operaci�n que desea realizar"
PRINT ""
PRINT "   Suma"
PRINT "   Resta"
PRINT "   Multiplicaci�n"
PRINT "   Divisi�n"
PRINT "   Quitar"
INPUT "PRESIONE"; X$
IF X$ = "Q" OR X$ = "q" THEN END
IF X$ = "S" OR X$ = "s" THEN
   CLS
  LOCATE 2, 30
    PRINT "USTED ELIGI� SUMA"
    INPUT "  COLOQUE EL PRIMER N�"; a
    INPUT "  COLOQUE EL SEGUNDO N�"; b
    COLOR 4
    LOCATE 13, 30
    PRINT "  EL RESULTADO ES"; a + b
END IF
IF X$ = "R" OR X$ = "r" THEN
     CLS
     LOCATE 2, 30
     PRINT "USTED ELIGI� RESTA"
     INPUT "  COLOQUE EL PRIMER N�"; c
     INPUT "  COLOQUE EL SEGUNDO N�"; d
     COLOR 4
     LOCATE 13, 30
     PRINT "  EL RESULTADO ES"; c - d
END IF
IF X$ = "M" OR X$ = "m" THEN
     CLS
     LOCATE 2, 30
     PRINT "USTED ELIGI� MULTIPLICACI�N"
     INPUT "  COLOQUE EL PRIMER N�"; f
     INPUT "  COLOQUE EL SEGUNDO N�"; g
     COLOR 4
     LOCATE 13, 30
     PRINT "  EL RESULTADO ES"; f * g
END IF
IF X$ = "D" OR X$ = "d" THEN
     CLS
     LOCATE 2, 30
     PRINT "USTED ELIGI� DIVISI�N"
     INPUT "  COLOQUE EL PRIMER N�"; h
     INPUT "  COLOQUE EL SEGUNDO N�"; i
     COLOR 4
     LOCATE 13, 30
     PRINT "  EL RESULTADO ES"; h / i
END IF
PRINT "presione ENTER para continuar"
INPUT a
WEND








  






