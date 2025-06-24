REPORT zbapi_material_detail.

DATA: wa_detail TYPE bapimatinr,
      wa_return TYPE bapiret2.

PARAMETERS: p_matnr TYPE matnr.

CALL FUNCTION 'BAPI_MATERIAL_GET_DETAIL'
  EXPORTING
    material = p_matnr
  IMPORTING
    material_general_data = wa_detail
  RETURN = wa_return.

IF wa_return-type = 'S'.
  WRITE: / 'Descrição:', wa_detail-matl_desc.
ELSE.
  WRITE: / 'Erro:', wa_return-message.
ENDIF.
