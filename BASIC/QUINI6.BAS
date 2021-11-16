
comienzo:
CLS
DIM v(6)
DIM j(6)
ac = 0
sac = 0
cac = 0
ceac = 0
 FOR I = 1 TO 6
    PRINT "ingrese el n£mero"; I; "de la tarjeta ganadora"
    INPUT v(aI)
 NEXT
INPUT "ingrese la cantidad de tarjetas a jugar"; a
FOR t = 1 TO a
   FOR I = 1 TO 6
      PRINT "ingrese el numero"; I; "de la tarjeta"; t
       INPUT j(I)
         FOR c = 1 TO 6
           IF j(I) = v(c) THEN
             ac = ac + 1
           END IF

         NEXT
   NEXT
   IF ac = 6 THEN
    sac = sac + 1
    ELSEIF ac = 5 THEN
    cac = cac + 1
    ELSEIF ac = 0 THEN
    ceac = ceac + 1
   END IF
   ac = 0
NEXT
CLS
LOCATE 10, 1
PRINT "Resultados: con 6 aciertos"; sac; "tarjeta(s),";
PRINT " con 5 aciertos"; cac; "tarjeta(s),";
PRINT "con 0 aciertos"; ceac; "tarjeta(s),";

