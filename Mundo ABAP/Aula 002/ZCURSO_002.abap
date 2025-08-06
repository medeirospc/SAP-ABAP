*
* Autor   Gustavo Medeiros
* Desde   2025/08/05
*
REPORT ZCURSO_002.

START-OF-SELECTION.
  DATA: lt_data TYPE STANDARD TABLE OF saplane.
  DATA: ls_data TYPE saplane.

  SELECT *
     INTO TABLE lt_data
     FROM saplane.

LOOP AT lt_data INTO ls_data.
  WRITE ls_data-producer. " Showing plane producer.
  WRITE ls_data-planetype. " Showing plane type.
  NEW-LINE.
ENDLOOP.