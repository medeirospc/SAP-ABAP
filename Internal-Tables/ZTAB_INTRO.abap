REPORT ztab_intro.

DATA: lt_nomes TYPE TABLE OF string,
      lv_nome TYPE string.

APPEND 'Gustavo' TO lt_nomes.
APPEND 'Ana' TO lt_nomes.
APPEND 'Carlos' TO lt_nomes.

LOOP AT lt_nomes INTO lv_nome.
  WRITE: / lv_nome.
ENDLOOP.
