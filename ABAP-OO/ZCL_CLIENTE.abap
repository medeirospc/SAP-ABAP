CLASS zcl_cliente DEFINITION.
  PUBLIC SECTION.
    METHODS: mostrar_nome IMPORTING nome TYPE string.
ENDCLASS.

CLASS zcl_cliente IMPLEMENTATION.
  METHOD mostrar_nome.
    WRITE: / 'Nome do cliente:', nome.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA(o_cliente) = NEW zcl_cliente( ).
  o_cliente->mostrar_nome( 'Gustavo' ).
