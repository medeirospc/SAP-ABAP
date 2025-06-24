CLASS zcl_pedido DEFINITION.
  PUBLIC SECTION.
    DATA: produto  TYPE string,
          preco    TYPE p DECIMALS 2,
          quantidade TYPE i.
    METHODS: calcular_total RETURNING VALUE(rv_total) TYPE p DECIMALS 2.
ENDCLASS.

CLASS zcl_pedido IMPLEMENTATION.
  METHOD calcular_total.
    rv_total = preco * quantidade.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA(pedido) = NEW zcl_pedido( ).
  pedido->produto = 'Monitor'.
  pedido->preco = '1500'.
  pedido->quantidade = 2.

  WRITE: / 'Total:', pedido->calcular_total( ).
