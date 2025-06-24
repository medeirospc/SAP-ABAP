REPORT zfunc_calcula_desconto.

DATA: lv_valor     TYPE p DECIMALS 2 VALUE '100.00',
      lv_desconto  TYPE p DECIMALS 2.

CALL FUNCTION 'ZCALCULA_DESCONTO'
  EXPORTING
    i_valor = lv_valor
  IMPORTING
    e_desconto = lv_desconto.

WRITE: / 'Desconto aplicado:', lv_desconto.

" Função ZCALCULA_DESCONTO (simulação):
" FUNCTION ZCALCULA_DESCONTO.
"   DATA: v_percent TYPE p DECIMALS 2 VALUE '10'.
"   e_desconto = i_valor * v_percent / 100.
" ENDFUNCTION.
