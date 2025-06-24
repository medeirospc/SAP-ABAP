REPORT zfunc_util_cep.

DATA: lv_cep TYPE string VALUE '12345-678',
      lv_result TYPE string.

CALL FUNCTION 'ZUTIL_FORMATAR_CEP'
  EXPORTING
    i_cep = lv_cep
  IMPORTING
    e_formatado = lv_result.

WRITE: / 'CEP Formatado:', lv_result.

" Simulação da função:
" FUNCTION ZUTIL_FORMATAR_CEP.
"   e_formatado = REPLACE ALL OCCURRENCES OF '-' IN i_cep WITH ''.
" ENDFUNCTION.
