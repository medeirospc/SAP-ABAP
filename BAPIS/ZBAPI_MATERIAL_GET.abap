REPORT zbapi_material_get.
" Define o início de um programa ABAP chamado zbapi_material_get

" Declara uma estrutura para armazenar os dados gerais do material
DATA: wa_material_general TYPE bapimatlhd,
      
      " Estrutura para dados de retorno (mensagens)
      wa_return TYPE bapiret2.

" Cria um parâmetro de entrada na tela para o usuário digitar o código do material
PARAMETERS: p_matnr TYPE matnr.

" Chamada da BAPI
CALL FUNCTION 'BAPI_MATERIAL_GET_DETAIL'
  EXPORTING
    material = p_matnr         " Envia o código digitado como entrada da BAPI
  IMPORTING
    material_general_data = wa_material_general " Pega os dados gerais do material
    return = wa_return.        " Recebe a mensagem de sucesso ou erro

" Verifica se o retorno da BAPI foi de sucesso
IF wa_return-type = 'S'.
  " Se foi sucesso, exibe algumas informações do material
  WRITE: / 'Material:', p_matnr,
         / 'Descrição:', wa_material_general-matl_desc,
         / 'Grupo mercadológico:', wa_material_general-matl_group.

/**/
ELSE.
  " Se deu erro, exibe a mensagem retornada pela BAPI
  WRITE: / 'Erro ao consultar material:', wa_return-message.
ENDIF.
