CLASS zcl_produto DEFINITION.
  PUBLIC SECTION.
    DATA: nome TYPE string.
    METHODS: exibir.
ENDCLASS.

CLASS zcl_produto IMPLEMENTATION.
  METHOD exibir.
    WRITE: / 'Produto:', nome.
  ENDMETHOD.
ENDCLASS.

CLASS zcl_produto_digital DEFINITION INHERITING FROM zcl_produto.
  PUBLIC SECTION.
    METHODS: exibir_url.
ENDCLASS.

CLASS zcl_produto_digital IMPLEMENTATION.
  METHOD exibir_url.
    WRITE: / 'Produto digital disponível para download'.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA(digital) = NEW zcl_produto_digital( ).
  digital->nome = 'E-book ABAP'.
  digital->exibir( ).
  digital->exibir_url( ).
