REPORT zalv_salv_event.

CLASS lcl_events DEFINITION.
  PUBLIC SECTION.
    METHODS: on_user_command FOR EVENT added_function OF cl_salv_events.
ENDCLASS.

CLASS lcl_events IMPLEMENTATION.
  METHOD on_user_command.
    MESSAGE 'Comando ALV acionado!' TYPE 'I'.
  ENDMETHOD.
ENDCLASS.

TABLES: sflight.

DATA: it_sflight TYPE TABLE OF sflight,
      o_alv      TYPE REF TO cl_salv_table,
      o_events   TYPE REF TO lcl_events,
      o_handler  TYPE REF TO cl_salv_events.

SELECT * FROM sflight INTO TABLE it_sflight UP TO 10 ROWS.

cl_salv_table=>factory(
  IMPORTING
    r_salv_table = o_alv
  CHANGING
    t_table      = it_sflight ).

o_handler = o_alv->get_event( ).
CREATE OBJECT o_events.
SET HANDLER o_events->on_user_command FOR o_handler.

o_alv->display( ).
