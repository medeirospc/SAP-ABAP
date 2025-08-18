REPORT ZCURSO_003.

* Declaração de variáveis.
DATA ld_id        TYPE i.             " numero
DATA ld_nome(100) TYPE c.             " texto
DATA ld_dtnasc    TYPE d.             " data
DATA ld_hrnasc    TYPE t.             " hora
DATA ld_peso(6)   TYPE p DECIMALS 3.  " peso com numeros decimais
DATA ld_desc      TYPE string.        " texto
DATA ld_login(5)  TYPE i.             " numero com zeros à esquerda

* Populando as variáveis.
ld_id = 1.
ld_nome = 'GUSTAVO MEDEIROS THOMAZ'.
ld_dtnasc = '20030519'.
ld_hrnasc = '084823'.
ld_peso = '73.000'.
ld_desc = 'A great customer!'.
ld_login = 1.

* Imprimindo as variáveis na tela.
WRITE (18) 'Id: '.
WRITE ld_id LEFT-JUSTIFIED.
NEW-LINE.

WRITE (18) 'Nome: '.
WRITE ld_nome.
NEW-LINE.

WRITE (18) 'Nascimento: '.
WRITE ld_dtnasc DD/MM/YYYY.
WRITE: ld_hrnasc+0(2), ':', ld_hrnasc+2(2), ':', ld_hrnasc+4(2).
NEW-LINE.

WRITE (18) 'Peso: '.
WRITE ld_peso LEFT-JUSTIFIED.
NEW-LINE.

WRITE (18) 'Descrição: '.
WRITE ld_desc.
NEW-LINE.

WRITE (18) 'Login: '.
WRITE ld_login LEFT-JUSTIFIED.
NEW-LINE.