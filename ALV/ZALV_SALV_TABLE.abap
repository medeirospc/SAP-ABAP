REPORT zalv_salv_table.

TABLES: sflight.

DATA: o_alv TYPE REF TO cl_salv_table,
      it_sflight TYPE TABLE OF sflight.

SELECT * FROM sflight INTO TABLE it_sflight UP TO 10 ROWS.

TRY.
    cl_salv_table=>factory(
      IMPORTING
        r_salv_table = o_alv
      CHANGING
        t_table      = it_sflight ).

    o_alv->display( ).

  CATCH cx_salv_msg INTO DATA(e).
    MESSAGE e->get_text( ) TYPE 'E'.
ENDTRY.
