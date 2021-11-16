comienzo:
         CLS
         PRINT " ingrese los grados de origen  "
         PRINT "                               "
         PRINT " 1 grados centigrados         "
         PRINT " 2 grados reamur              "
         PRINT " 3 grados kelvin              "
         PRINT " 4 grados farenheith          "
         PRINT " 5 fin                        "
         PRINT "                              "
         INPUT "ingrese la opcion"; op%
         IF op% < 1 THEN PRINT CHR$(7): GOTO comienzo
         IF op% > 5 THEN PRINT chrs$(7): GOTO comienzo
         IF op% = 5 THEN GOTO final
         ON op% GOSUB centi, ream, kelv, faren
         INPUT "para continuar presione enter"; a$
         GOTO comienzo

centi:
      CLS
      PRINT " Grados a convertir"
      PRINT "                         "
      PRINT "   1_grados reamur       "
      PRINT "   2_grados kelvin       "
      PRINT "   3_grados farengheith  "
      PRINT "                         "
      INPUT "    ingrese la opcion    "; op1%
      ON op1% GOSUB cr, ck, cf
      RETURN

cr:   CLS
      INPUT "ingrese los grados centigrados"; gc
      gr = gc * 4 / 5
      PRINT "equivalen a"; gr; "grados reamur"
      RETURN

ck:
      CLS
      INPUT "ingrese los grados centigrados"; gc
      gk = gc * 5 / 9
      PRINT "equivalen a"; gk; "grados kelvin"
      RETURN

cf:   CLS
      INPUT "ingrese los grados centigrados"; gc
      gf = gc * 9 / 5 + 32
      PRINT "equivalen a"; gf; "grados farengheith"
      RETURN

ream:
      CLS
      PRINT "Grados a convertir"
      PRINT "                        "
      PRINT " 1_grados centigrados   "
      PRINT " 2_grados kelvin        "
      PRINT " 3_grados farengheith   "
      PRINT "                        "
      INPUT " ingrese la opcion      "; op1%
      ON op1% GOSUB rc, rk, rf
      RETURN

rc:
      CLS
      INPUT "ingrese los grados reamur"; gr
      gc = gr * 5 / 4
      PRINT "equivalen a"; gc; "grados centigrados"
      RETURN

rk:
      CLS
      INPUT "ingrese los grados reamur"; gr
      gk = gr * 5 / 4 + 273
      PRINT "equivalen a"; gk; "grados kelvin"
      RETURN

rf:
      CLS
      INPUT "ingrese los grados reamur"; gr
      gf = (gr + 32) * 9 / 4
      PRINT "equivalen a"; gf; "grados farengheith"
      RETURN
kelv:
      CLS
      PRINT "Grados a convertir"
      PRINT "                         "
      PRINT " 1_grados centigrados    "
      PRINT " 2_grados reamur         "
      PRINT " 3_grados farengheith    "
      PRINT "                         "
      INPUT "ingrese la opcion        "; op1%
      ON op1% GOSUB kc, kr, kf
      RETURN

kc:
      CLS
      INPUT "ingrese los grados kelvin"; gk
      gc = gk - 273
      PRINT "equivalen a"; gc; "grados centigrados"
      RETURN

kr:
      CLS
      INPUT "ingrese los grados kelvin"; gk
      gr = (gk - 273) * 4 / 5
      PRINT "equivalen a"; gr; "grados reamur"
      RETURN
kf:
      CLS
      INPUT "ingrese los grados kelvin"; gk
      gf = (gk + 32) * 9 / 5
      PRINT "equivalen a"; gf; "grados farengheith"
      RETURN
faren:
      CLS
 
      PRINT "Grados a convertir"
      PRINT "                        "
      PRINT " 1_grados centigrados   "
      PRINT " 2_grados reamur        "
      PRINT " 3_grados kelvin        "
      PRINT "                        "
      INPUT "   ingrese la opcion    "; op1%
      ON op1% GOSUB fc, fr, fk
      RETURN

fc:
      CLS
      INPUT "ingrese los grados farenheith"; gf
      gc = (gf - 32) * 5 / 9
      CLS
      PRINT "equivalen a"; gc; "grados centigrados"
      RETURN
fr:
      CLS
      INPUT "ingrese los grados farengheith"; gf
      gr = (gf - 32) * 4 / 9
      PRINT "equivalen a"; gr; "grados reamur"
      RETURN
fk:
      CLS
      INPUT "ingrese los grados farengheith"; gf
      gf = (gk - 32) * 5 / 9 + 273
      PRINT "equivalen a"; gk; "grados kelvin"
      RETURN
final:
     END

