REPORT zalv_basic.

TABLES: sflight.

TYPE-POOLS: slis.

DATA: it_sflight TYPE TABLE OF sflight.

SELECT * FROM sflight INTO TABLE it_sflight UP TO 10 ROWS.

CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    i_structure_name = 'SFLIGHT'
  TABLES
    t_outtab         = it_sflight.
