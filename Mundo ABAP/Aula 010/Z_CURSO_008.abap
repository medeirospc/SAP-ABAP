REPORT Z_CURSO_008.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETER: p_1bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_2bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_3bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
DATA ld_media(12) TYPE p DECIMALS 2.

ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

*IF ld_media < 60.
*  WRITE: 'Sua nota: ', ld_media, 'foi abaixo de 60. Reprovado!'.
*ELSE.
*  WRITE: 'Parabéns! Sua nota: ', ld_media, 'foi suficiente. Aprovado!' .
*ENDIF.

IF ld_media >= 0 AND ld_media <= 50.
    WRITE: 'Sua nota foi muito baixa, você foi reprovado!'.
ELSEIF ld_media >= 51 AND ld_media <= 59.
    WRITE: 'Você quase passou, estude um pouco mais'.
ELSEIF ld_media >= 60 AND ld_media <= 100.
    WRITE: 'Você passou, parabéns...!!!'.
ELSE.
    WRITE: 'Sua nota está inconsistente, não pode ser maior que 100.'.
ENDIF.

" Combinações de AND.
*V AND V = V
*V AND F = F
*F AND V = F
*F AND F = F
*

" Combinações de OR.
*V OR V = V
*V OR F = V
*F OR V = V
*F OR F = F