
-- 1. Listar los nombres de los usuarios


	SELECT nombre FROM Usuarios;

nombre:
BRENDA
OSCAR
JOSE
LUIS
LUIS
DANIEL
JAQUELINE
ROMAN
BLAS
JESSICA
DIANA
RICARDO
VALENTINA
BRENDA
LUCIA
JUAN
ELPIDIO
JESSICA
LETICIA
LUIS
HUGO

-- 2. Calcular el saldo máximo de los usuarios de sexo “Mujer”


	SELECT MAX(saldo) FROM Usuarios WHERE sexo = 'M';


500


-- 3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY


	SELECT nombre, telefono FROM Usuarios WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');

nombre	telefono
JOSE	655-143-3922
LUIS	655-100-8260
DANIEL	655-145-2586
JAQUELINE	655-330-5514
DIANA	655-143-3952
VALENTINA	655-137-4253
LUCIA	655-145-4992
JESSICA	655-330-5143
LETICIA	655-143-4019
LUIS	655-100-5085


-- 4. Contar los usuarios sin saldo o inactivos.


	SELECT COUNT(*) FROM Usuarios WHERE saldo <= '0' OR NOT activo;


7


-- 5. Listar el login de los usuarios con nivel 1, 2 o 3


	SELECT usuario FROM Usuarios WHERE nivel IN(1, 2, 3);


usuario
BRE2271
OSC4677
JOS7086
LUI7072
ROM6520
JES4752
DIA6570
RIC8283
BRE8106
LUC4982
ELP2984
JES9640
LET4015
LUI1076
HUG5441


-- 6. Listar los números de teléfono con saldo menor o igual a 300


	SELECT telefono FROM Usuarios WHERE saldo <= 300;

telefono
655-330-5736
655-143-4181
655-143-3922
655-137-1279
655-100-8260
655-145-2586
655-330-5514
655-330-3263
655-330-3871
655-143-3952
655-145-6049
655-137-4253
655-100-1351
655-145-4992
655-100-6517
655-330-5143
655-143-4019
655-100-5085


-- 7. Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL


    SELECT SUM(saldo) FROM Usuarios WHERE compania = 'NEXTEL';

150


-- 8. Contar el número de usuarios por compañía telefónica


	SELECT compania, COUNT(usuario) FROM Usuarios GROUP BY compania;


compania	COUNT(usuario)
AT&T	     2
AXEL	     2
IUSACELL	 6
MOVISTAR	 2
NEXTEL	     1
TELCEL	     3
UNEFON	     5


-- 9. Contar el número de usuarios por nivel


	SELECT nivel, COUNT(usuario) FROM Usuarios GROUP BY nivel;


nivel	COUNT(usuario)
0		6
1		4
2		5
3		6


-- 10. Listar el login de los usuarios con nivel 2

	SELECT usuario FROM Usuarios WHERE nivel=2;


usuario:
BRE2271
ROM6520
RIC8283
LET4015
HUG5441


-- 11. Mostrar el email de los usuarios que usan gmail


	SELECT email FROM Usuarios WHERE email LIKE '%gmail.com';

email
oscar@gmail.com
francisco@gmail.com
roman@gmail.com
brenda2@gmail.com
lucia@gmail.com


-- 12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA


	SELECT nombre, telefono FROM Usuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');

nombre	telefono
BRENDA	655-330-5736
OSCAR	655-143-4181
LUIS	655-137-1279
ROMAN	655-330-3263
BLAS	655-330-3871
JESSICA	655-143-6861
RICARDO	655-145-6049
BRENDA	655-100-1351
JUAN	655-100-6517
ELPIDIO	655-145-9938
HUGO	655-137-3935


-- 13. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG

	SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN('LG', 'SAMSUNG');

nombre	telefono
JOSE	655-143-3922
LUIS	655-100-8260
DANIEL	655-145-2586
JAQUELINE	655-330-5514
DIANA	655-143-3952
RICARDO	655-145-6049
VALENTINA	655-137-4253
BRENDA	655-100-1351
LUCIA	655-145-4992
ELPIDIO	655-145-9938
JESSICA	655-330-5143
LETICIA	655-143-4019
LUIS	655-100-5085
HUGO	655-137-3935


-- 14. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL

	SELECT usuario, telefono FROM Usuarios WHERE compania = 'IUSACELL';

usuario	telefono
BRE2271	655-330-5736
LUI7072	655-100-8260
ROM6520	655-330-3263
RIC8283	655-145-6049
LUC4982	655-145-4992
JES9640	655-330-5143


-- 15. Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL

	SELECT usuario, telefono FROM Usuarios WHERE NOT compania = 'TELCEL';

usuario	telefono
BRE2271	655-330-5736
JOS7086	655-143-3922
LUI7072	655-100-8260
DAN2832	655-145-2586
JAQ5351	655-330-5514
ROM6520	655-330-3263
BLA9739	655-330-3871
DIA6570	655-143-3952
RIC8283	655-145-6049
VAL6882	655-137-4253
BRE8106	655-100-1351
LUC4982	655-145-4992
JUA2337	655-100-6517
ELP2984	655-145-9938
JES9640	655-330-5143
LET4015	655-143-4019
LUI1076	655-100-5085
HUG5441	655-137-3935

-- 16. Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA

	SELECT AVG(saldo) FROM Usuarios WHERE marca = 'NOKIA';

AVG(saldo)
100


-- 17. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL

	SELECT usuario, telefono FROM Usuarios WHERE compania IN ('IUSACELL', 'AXEL');

usuario	telefono
BRE2271	655-330-5736
LUI7072	655-100-8260
JAQ5351	655-330-5514
ROM6520	655-330-3263
RIC8283	655-145-6049
LUC4982	655-145-4992
JUA2337	655-100-6517
JES9640	655-330-5143

-- 18. Mostrar el email de los usuarios que no usan yahoo

	SELECT email FROM Usuarios WHERE email NOT LIKE '%yahoo.com';

email
brenda@live.com
oscar@gmail.com
francisco@gmail.com
enrique@outlook.com
luis@hotmail.com
daniel@outlook.com
jaqueline@outlook.com
roman@gmail.com
blas@hotmail.com
jessica@hotmail.com
diana@live.com
ricardo@hotmail.com
valentina@live.com
brenda2@gmail.com
lucia@gmail.com
juan@outlook.com
elpidio@outlook.com
jessica2@live.com
luis2@live.com
hugo@live.com


-- 19. Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL

	SELECT usuario, telefono FROM Usuarios WHERE compania NOT IN ('TELCEL', 'IUSACELL');

usuario	telefono
JOS7086	655-143-3922
DAN2832	655-145-2586
JAQ5351	655-330-5514
BLA9739	655-330-3871
DIA6570	655-143-3952
VAL6882	655-137-4253
BRE8106	655-100-1351
JUA2337	655-100-6517
ELP2984	655-145-9938
LET4015	655-143-4019
LUI1076	655-100-5085
HUG5441	655-137-3935


-- 20. Listar el login y teléfono de los usuarios con compañía telefónica UNEFON

	SELECT usuario, telefono FROM Usuarios WHERE compania = 'UNEFON';

usuario	telefono
DAN2832	655-145-2586
BLA9739	655-330-3871
DIA6570	655-143-3952
LET4015	655-143-4019
LUI1076	655-100-5085


-- 21. Listar las diferentes marcas de celular en orden alfabético descendentemente
-- 22. Listar las diferentes compañías en orden alfabético aleatorio
-- 23. Listar el login de los usuarios con nivel 0 o 2
-- 24. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
-- 25. Listar el login de los usuarios con nivel 1 o 3
-- 26. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
-- 27. Listar el login de los usuarios con nivel 3
-- 28. Listar el login de los usuarios con nivel 0
-- 29. Listar el login de los usuarios con nivel 1
-- 30. Contar el número de usuarios por sexo
-- 31. Listar el login y teléfono de los usuarios con compañía telefónica AT&T
-- 32. Listar las diferentes compañías en orden alfabético descendentemente
-- 33. Listar el login de los usuarios inactivos
-- 34. Listar los números de teléfono sin saldo
-- 35. Calcular el saldo mínimo de los usuarios de sexo “Hombre”
-- 36. Listar los números de teléfono con saldo mayor a 300
-- 37. Contar el número de usuarios por marca de teléfono
-- 38. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
-- 39. Listar las diferentes compañías en orden alfabético ascendentemente
-- 40. Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
-- 41. Mostrar el email de los usuarios que usan hotmail
-- 42. Listar los nombres de los usuarios sin saldo o inactivos
-- 43. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
-- 44. Listar las diferentes marcas de celular en orden alfabético ascendentemente
-- 45. Listar las diferentes marcas de celular en orden alfabético aleatorio
-- 46. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON
-- 47. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
-- 48. Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL