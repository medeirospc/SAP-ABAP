REPORT ZCURSO_004.

CONSTANTS lc_pi(12) TYPE p DECIMALS 13 VALUE `3.1415926535898`.

DATA ld_raio(12) TYPE p DECIMALS 2.
DATA ld_area(12) TYPE p DECIMALS 2.

ld_raio = 10.
ld_area = ( ld_raio * ld_raio ) * lc_pi.

WRITE: 'A área de um círculo com raio de: ', ld_raio, 'é ', ld_area.



*Raio de 10: 314,16.
*Raio de 15: 706,86.