"Começando o meu programa."
REPORT Z_WORKAREA_EMPLOYEE_DATA.

"Declarando os tipos das colunas na tabela no ty_employee."
TYPES: BEGIN OF ty_employee,
        id TYPE i,
        name TYPE string,
        position TYPE string,
        END OF ty_employee.


"Declarando a tabela it_employees e a estrutura wa_employee do tipo ty_employee."
DATA: it_employees TYPE TABLE OF ty_employee,
      wa_employee TYPE ty_employee.

"Adicionando dados (2 registros) à tabela it_emplyees usando APPEND."
wa_employee-id = 1.
wa_employee-name = 'Medeiros'.
wa_employee-position = 'Developer'.
APPEND wa_employee TO it_employees.

wa_employee-id = 2.
wa_employee-name = 'Kyntoy'.
wa_employee-position = 'Project Manager'.
APPEND wa_employee TO it_employees.

"Lendo um dado - registro - específico na tabela it_employees."
READ TABLE it_employees INTO wa_employee WITH KEY id = 2.
IF sy-subrc = 0.
    WRITE: / 'Encontrado:', 'Name:', wa_employee-name, 'and', 'Position:', wa_employee-position.
ELSE.
    WRITE: / 'Não encontrado.'.
ENDIF.

"Loop para visualizar dados - registros - da tabela."
LOOP AT it_employees INTO wa_employee.
   WRITE: / 'Id:', wa_employee-id, '|', 'Name:', wa_employee-name, '|', 'Position:', wa_employee-position.
ENDLOOP.