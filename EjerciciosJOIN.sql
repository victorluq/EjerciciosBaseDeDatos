-- 1. ¿Qué provincias no tenemos clientes?

    SELECT provincias.nombre FROM provincias LEFT JOIN clientes 
    ON clientes.codigoProvincia = provincias.codigo WHERE clientes.codigoProvincia IS null;

nombre:
Corrientes
Salta
Buenos Aires
Neuquen
-- 2. ¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia. Un tip, vas a necesitar la sentencia distinct

    SELECT DISTINCT provincias.nombre FROM provincias INNER JOIN clientes 
    ON clientes.codigoProvincia = provincias.codigo

nombre:
Cordoba
Santa Fe
Misiones