* Author:     Gustavo Medeiros.
* Since:      02/09/2025.
* Report:     Criar um report que imprima em tela,
*             um convite de festa à determinada
*             pessoa pelo nome completo dela,
*             utilizando uma instrução de con-
*             catenizar duas variáveis (nome e
*             sobrenome.

REPORT ZCURSO_005.

DATA ld_nome(10)           TYPE c.
DATA ld_sobrenome(10)      TYPE c.
DATA ld_nomecompleto(25)   TYPE c.

ld_nome       =         'Abner'.
ld_sobrenome  =         'Felipe'.


* 1º Forma de concatenar:
*CONCATENATE ld_nome ld_sobrenome
*  INTO ld_nomecompleto SEPARATED BY ' '.

* 2º Forma de concatenar:
ld_nomecompleto = |{ ld_nome } { ld_sobrenome }!|.


WRITE 'Convite para a festa'.
NEW-LINE.
SKIP.

WRITE ' Olá, '.
WRITE ld_nomecompleto.
SKIP.

WRITE 'Você foi convidado para a nossa festa de fim de ano, contamos com a sua presença.'.
NEW-LINE.
SKIP.

WRITE 'Atenciosamente,'.

WRITE 'EMPRESA GMT'.