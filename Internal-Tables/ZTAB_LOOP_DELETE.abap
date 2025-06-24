REPORT ztab_loop_delete.

DATA: lt_numeros TYPE STANDARD TABLE OF i WITH EMPTY KEY.

DO 10 TIMES.
  APPEND sy-index TO lt_numeros.
ENDDO.

DELETE lt_numeros WHERE table_line MOD 2 = 0.

LOOP AT lt_numeros INTO DATA(lv_num).
  WRITE: / lv_num.
ENDLOOP.
