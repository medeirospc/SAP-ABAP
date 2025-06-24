REPORT zalv_salv_clientes.

TABLES: kna1.

DATA: it_clientes TYPE TABLE OF kna1,
      o_alv TYPE REF TO cl_salv_table.

SELECT * FROM kna1 INTO TABLE it_clientes UP TO 20 ROWS.

TRY.
    cl_salv_table=>factory(
      IMPORTING
        r_salv_table = o_alv
      CHANGING
        t_table      = it_clientes ).

    o_alv->display( ).
  CATCH cx_salv_msg INTO DATA(e_text).
    MESSAGE e_text->get_text( ) TYPE 'E'.
ENDTRY.
