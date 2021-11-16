comienzo:
CLS
DIM v(24)
sum = 0
FOR i = 1 TO 24
   PRINT "ingrese la temperatura Nø"; i
   INPUT v(i)

sum = sum + v(i)

prom = sum / 24

NEXT i
PRINT "el promedio de temperatura es:"; prom


