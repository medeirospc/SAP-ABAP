REPORT Z_AULA07_SAGA_FUNCTIONS.

* Chamando Function Module da SE37
CALL FUNCTION 'Z_VALIDAR_CPF'
  EXPORTING
    iv_cpf      = lv_cpf
  IMPORTING
     ev_valido  = lv_valido.