UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = NULL, INCLUIDO_RUV = NULL

UPDATE       TablaVictimas
SET                IdEducacion = NULL

UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'CC'
WHERE        (TIPO_DOCI = N'CEDULA')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'CE'
WHERE        (TIPO_DOCI = N'CEDULA DE EXTRANJERIA')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'OTR'
WHERE        (TIPO_DOCI = N'CERTIFICADO DE CABILDO')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'PAS'
WHERE        (TIPO_DOCI = N'PEP')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'PAS'
WHERE        (TIPO_DOCI = N'NES')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'SINF'
WHERE        (TIPO_DOCI = N'ND - SIN DOCUMENTACION')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'RC'
WHERE        (TIPO_DOCI = N'REGISTRO CIVIL')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'TI'
WHERE        (TIPO_DOCI = N'TARJETA DE IDENTIDAD')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'PAS'
WHERE        (TIPO_DOCI = N'VISA')

UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'TI'
WHERE        (TIPO_DOCI = N'NUIP:NUMERO UNICO DE IDENTIFICACION PERSONAL')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'CC'
WHERE        (TIPO_DOCI = N'CC:CÉDULA DE CIUDADANÍA')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'CE'
WHERE        (TIPO_DOCI = N'CE:CÉDULA DE EXTRANJERÍA')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'OTR'
WHERE        (TIPO_DOCI = N'CCB:CERTIFICADO CABILDO')

UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'RC'
WHERE        (TIPO_DOCI = N'RC:REGISTRO CIVIL DE NACIMIENTO')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'TI'
WHERE        (TIPO_DOCI = N'TI:TARJETA DE IDENTIDAD')


UPDATE       Tabla_Servicios
SET                TIPO_DOCI = N'PAS'
WHERE        (TIPO_DOCI = N'VI:VISA')

UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO AND Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND 
                         Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND 
                         Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO

UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 1, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO AND Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND 
                         Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND 
                         Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO

UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND 
                         Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)

UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 2, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND 
                         Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND 
                         Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 3, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND 
                         Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO AND 
                         Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)



UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 4, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO AND 
                         Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)

UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 5, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.TIPO_DOCI = TablaVictimas.TIPODOCUMENTO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)



UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)

UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 6, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 7, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND 
                         Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)



UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 8, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND 
                         Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)



UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 9, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO AND Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 10, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO AND 
                         Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)

UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND 
                         Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 11, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_SEGU_NOMB = TablaVictimas.SEGUNDONOMBRE AND 
                         Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND Tabla_Servicios.AN_SEGU_APEL = TablaVictimas.SEGUNDOAPELLIDO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)


UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)

UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 12, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.AN_PRIM_APEL = TablaVictimas.PRIMERAPELLIDO AND 
                         Tabla_Servicios.AN_PRIM_NOMB = TablaVictimas.PRIMERNOMBRE
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)



UPDATE       TablaVictimas
SET                IdEducacion = IDENTIFICADOR
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)



UPDATE       Tabla_Servicios
SET                NUMERO_CONSULTA = 13, INCLUIDO_RUV = N'SI'
FROM            Tabla_Servicios INNER JOIN
                         TablaVictimas ON Tabla_Servicios.IDENTIFICACION = TablaVictimas.DOCUMENTO AND Tabla_Servicios.FECHA_NACIMIENTO = TablaVictimas.FECHANACIMIENTO
WHERE        (Tabla_Servicios.INCLUIDO_RUV IS NULL)



