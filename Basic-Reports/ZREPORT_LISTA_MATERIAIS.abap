REPORT zreport_lista_materiais.

TABLES: mara.

START-OF-SELECTION.

  SELECT matnr, ernam FROM mara INTO TABLE @DATA(lt_materiais) UP TO 10 ROWS.

  LOOP AT lt_materiais INTO DATA(ls_material).
    WRITE: / 'Material:', ls_material-matnr, '| Criado por:', ls_material-ernam.
  ENDLOOP.
