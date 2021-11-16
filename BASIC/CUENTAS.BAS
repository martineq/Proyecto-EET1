X$ = "1"
WHILE X$ <> "Q"
CLS
COLOR 3
LOCATE 2, 10
PRINT "Elija la primer letra de la operaci¢n que desea realizar"
PRINT ""
PRINT "   Suma"
PRINT "   Resta"
PRINT "   Multiplicaci¢n"
PRINT "   Divisi¢n"
PRINT "   Quitar"
INPUT "PRESIONE"; X$
IF X$ = "Q" OR X$ = "q" THEN END
IF X$ = "S" OR X$ = "s" THEN
   CLS
  LOCATE 2, 30
    PRINT "USTED ELIGIà SUMA"
    INPUT "  COLOQUE EL PRIMER Nø"; a
    INPUT "  COLOQUE EL SEGUNDO Nø"; b
    COLOR 4
    LOCATE 13, 30
    PRINT "  EL RESULTADO ES"; a + b
END IF
IF X$ = "R" OR X$ = "r" THEN
     CLS
     LOCATE 2, 30
     PRINT "USTED ELIGIà RESTA"
     INPUT "  COLOQUE EL PRIMER Nø"; c
     INPUT "  COLOQUE EL SEGUNDO Nø"; d
     COLOR 4
     LOCATE 13, 30
     PRINT "  EL RESULTADO ES"; c - d
END IF
IF X$ = "M" OR X$ = "m" THEN
     CLS
     LOCATE 2, 30
     PRINT "USTED ELIGIà MULTIPLICACIàN"
     INPUT "  COLOQUE EL PRIMER Nø"; f
     INPUT "  COLOQUE EL SEGUNDO Nø"; g
     COLOR 4
     LOCATE 13, 30
     PRINT "  EL RESULTADO ES"; f * g
END IF
IF X$ = "D" OR X$ = "d" THEN
     CLS
     LOCATE 2, 30
     PRINT "USTED ELIGIà DIVISIàN"
     INPUT "  COLOQUE EL PRIMER Nø"; h
     INPUT "  COLOQUE EL SEGUNDO Nø"; i
     COLOR 4
     LOCATE 13, 30
     PRINT "  EL RESULTADO ES"; h / i
END IF
PRINT "presione ENTER para continuar"
INPUT a
WEND








  






