CLS
comenzar:

DIM v$(150)

FOR i = 1 TO 150
      v$(i) = "c"
NEXT i
FOR x = 2 TO 150
FOR i = x TO 150 STEP x
      IF v$(i) = "c" THEN
         v$(i) = "a"
      ELSE
         v$(i) = "c"
      END IF
NEXT i
NEXT x

FOR i = 1 TO 150
       
        PRINT i, v$(i)
           IF i MOD 20 = 0 THEN
            LOCATE 24, 20
            
            PRINT "presione una letra y continue ",
            SLEEP
            CLS
           END IF
NEXT i

       





      


