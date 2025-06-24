REPORT zform_exemplo.

PARAMETERS: p_nome TYPE string.

START-OF-SELECTION.
  PERFORM exibir_boas_vindas USING p_nome.

FORM exibir_boas_vindas USING p_nome TYPE string.
  WRITE: / 'Bem-vindo(a),', p_nome.
ENDFORM.
