   
inicio:
   CLS
   INPUT "ingrese la cantidad de metros del circuito"; k
   INPUT "ingrese el n§ de vueltas"; v
   PRINT TIME$
 v$ = " "
 cv = 0
 ac = 0
   INPUT "presione enter para comenzar"; v$
   t1$ = TIME$
WHILE (v$ <> "f" AND cv < v)
   INPUT "ENTER TERMINA "; v$
   cv = cv + 1
   h1$ = MID$(t1$, 1, 2)
   m1$ = MID$(t1$, 4, 2)
   s1$ = MID$(t1$, 7, 2)
   sg1 = VAL(h1$) * 3600 + VAL(m1$) * 60 + VAL(s1$)
   t2$ = TIME$
   h2$ = MID$(t2$, 1, 2)
   m2$ = MID$(t2$, 4, 2)
   s2$ = MID$(t2$, 7, 2)
   sg2 = VAL(h2$) * 3600 + VAL(m2$) * 60 + VAL(s2$)
   ts = sg2 - sg1
   tm = INT(ts / 60)
   rs = ts MOD 60
   PRINT "Tiempo total de la vuelta "; cv; " : "; tm; " minutos; "; rs; " segundos; "; ""
   t1$ = t2$
   ac = ac + ts
WEND

mintot = INT(ac / 60)
segtot = ac MOD 60
PRINT "el tiempo total del recorrido es "; mintot; " minutos "; segtot; " segundos "

mintotenseg = mintot * 60
ww = mintotenseg + segtot
qq = ww / v
prom = qq MOD 60

km = k * 1000
PRINT "el tiempo promedio de las vueltas es"; prom; "segundos"
 km = k / 1000
 vel = km / (ww / 3600)
 PRINT vel

