CREATE DATABASE Coworking;

USE Coworking;

//**Tabla CLIENTE**//
CREATE TABLE Cliente (
ID_Cliente INT NOT NULL PRIMARY KEY,
Nombre_Cliente VARCHAR(50) NOT NULL,
Tipo_de_Cliente VARCHAR(50),
Mail  VARCHAR(100),
Telefono VARCHAR(50),
Direccion VARCHAR(100)
);
SELECT * FROM Cliente;

//**Tabla FACTURACION**//
CREATE TABLE Facturacion (
ID_Facturacion INT NOT NULL PRIMARY KEY,
Tipo_de_Plan VARCHAR(30) NOT NULL,
Costo Decimal,
ID_Cliente INT NOT NULL, 
Horas_extras TINYINT,
FOREIGN KEY(ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

select * from facturacion;

//**Tabla USUARIO**//
CREATE TABLE Usuario (
ID_Usuario INT NOT NULL PRIMARY KEY,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Edad INT, 
Mail VARCHAR(100),
Telefono INT,
ID_Cliente INT NOT NULL, 
FOREIGN KEY(ID_Cliente) REFERENCES Cliente(ID_Cliente)
);


//**Tabla SUCURSAL**//
CREATE TABLE Sucursal (
ID_Sucursal INT NOT NULL PRIMARY KEY,
Nombre_Sucursal VARCHAR(50),
Direccion VARCHAR(100) NOT NULL,
Provincia VARCHAR(50)
);

SELECT * FROM SUCURSAL;

//**Tabla RESERVAS**//
CREATE TABLE Reservas (
ID_Reservas INT NOT NULL PRIMARY KEY,
Fecha_Hora_Ingreso TIMESTAMP NOT NULL,
Fecha_Hora_Egreso TIMESTAMP NOT NULL,
Silla TINYINT,
Estado VARCHAR(50),
Horas_reservadas TINYINT,
Sala VARCHAR(50),
ID_Sucursal  INT NOT NULL,
ID_Cliente INT NOT NULL,
ID_Usuario INT NOT NULL,
FOREIGN KEY(ID_Sucursal) REFERENCES Sucursal(ID_Sucursal),
FOREIGN KEY(ID_Cliente) REFERENCES Cliente(ID_Cliente),
FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID_Usuario)
);

select * from reservas;
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
/* INSERCIÓN DE DATOS*/
USE coworking;

INSERT INTO Cliente (id_cliente,nombre_cliente,Tipo_de_Cliente,Mail,Telefono,Direccion)
VALUES 	(1,'SportOn','small','sporton@gmail.com',1165458853,'Callao 858, Buenos Aires'), 
		(2,'Cleaning Company','small','cleaningrh@cleaningcompany.com.ar',1167772853,'Asamblea 7400, Buenos Aires'),
		(3,'Danone','large','danoneprocurement@danoneglobal.com.ar',1169875202,'Pacheco 8954, Buenos Aires'),
		(4,'XYZ Corporation', 'medium', 'xyz@gmail.com', 1162334455, 'Carlos Calvo 123 , Buenos Aires'),
        (5,'Nature Foods', 'small', 'nature@email.com', 1112223333, 'Corrientes 654 , Buenos Aires'),
        (6, 'Sunshine Enterprises', 'large', 'sunshine@enterprisessun.com', 1134445555, 'Rodriguez Peña 478, Cordoba'),
        (7, 'Infinite Innovations', 'medium', 'infinite@outlook.com', 7778889999, 'Santa Fe 882, Buenos Aires'),
        (8, 'Luis Di Marti', 'particular', 'emprendimientodimarti@yahoo.com', 1169542651,'Los Pinos 2440, Buenos Aires'),
        (9, 'Harmony Products', 'small', 'harmony@outlook.com', 6665554444, 'Balboa 446, Cordoba'),
        (10, 'Rainbow Foods', 'large', 'rainbowprocurement@raifoods.com.ar', 2221110000, ' Dr. Estanislao Severo Zeballos 3115, Buenos Aires')
        ;
        
-------------------------------------------------------------------------------------------------------

INSERT INTO Facturacion (ID_Facturacion,Tipo_de_Plan,Costo,ID_Cliente,Horas_extras)
VALUES 	(000396,'plus',1256900.12,7,20),
		(001234, 'premium', 9900000.14, 6, 23),
        (002345, 'basico', 100750.15, 8, 0),
        (003567, 'premium', 12345600.00, 3, 18),
        (004789, 'basico', 300450.00, 5, 22),
        (005678, 'plus', 1800200.25, 9, 19),
        (006789, 'basico', 700300.36, 1, 30),
        (007890, 'corporativo', 31000000.70, 10, 125),
        (008901, 'sin plan', 11500900.36, 2, 0),
        (009012, 'premium', 8100600.55, 4, 23)
        ;

--------------------------------------------------------------------------------------------------------
        
INSERT INTO Usuario (ID_Usuario,Nombre,Apellido,Edad,Mail,Telefono,ID_Cliente)
VALUES 	(965823,'Carlos','Machado',35,'grace.thompson123@gmail.com',1168598427,2), 
		(874512, 'Ana', 'Lopez', 28,'mma.smith456@yahoo.com', 1156789012, 7),
        (763254, 'Martin', 'Fernandez', 40,'me.jones789@yahoo.com', 1178901234, 3),
        (654321, 'Laura', 'Gomez', 32, 'omtin890@yahoo.com',1167890123, 6),
        (589743, 'Javier', 'Rodriguez', 37,'jason.morris456@gmail.com', 1189012345, 9),
        (478512, 'Lucia', 'Torres', 29,'lily.baker890@gmail.com', 1160123456, 3),
        (365489, 'Diego', 'Sanchez', 33, 'brn.wi123@yahoo.com',1171234567, 2),
        (254836, 'Valeria', 'Martinez', 31,'avery.collins789@gmail.com', 1152345678, 10),
        (143697, 'Maria', 'Herrera', 36,'lsa.white234@yahoo.com', 1183456789, 5),
        (356981, 'Miguel', 'Diaz', 27, 'miga.brown456@yahoo.com',1164567890, 5),
        (467812, 'Lucas', 'Ramirez', 38,'luc.evans789@yahoo.com', 1175678901, 1),
        (578943, 'Sofia', 'Gonzalez', 30,'sof.gonjson234@yahoo.com', 1186789012, 9),
        (689124, 'Alejandro', 'Lopez', 34,'ava.lopez567@outlook.com', 1157890123, 2),
        (791345, 'Camila', 'Fernandez', 39,'rbt.williams567@yahoo.com', 1168901234, 3),
        (812476, 'Juan', 'Sanchez', 26,'j_doe123@yahoo.com', 1180123456, 3),
        (923567, 'Paola', 'Torres', 41,'jackson.king123@gmail.com', 1151234567, 2),
        (634298, 'Andres', 'Martinez', 29, 'anddyy789@outlook.com',1172345678, 10),
        (745129, 'Carolina', 'Gomez', 37,'hailey.caro@outlook.com', 1183456789, 3),
        (856210, 'Gustavo', 'Rodriguez', 32,'gus.hall234@outlook.com', 1164567890, 2),
        (967341, 'Luis', 'Herrera', 35,'herr.green456@outlook.com', 1175678901, 10) 
		;

----------------------------------------------------------------------------------

INSERT INTO Sucursal (ID_Sucursal,Nombre_Sucursal,Direccion,Provincia)
VALUES 	(001,'WeWork_Point', 'Lavalle 3250 CABA', 'Buenos Aires'),
		(002,'WeWork_Focal', 'Carlos Villate 2236 Munro', 'Buenos Aires'),
        (003,'WeWork_Federal', 'La Rioja 506', 'Cordoba')
;

--------------------------------------------------------------------------------------------

INSERT INTO Reservas (ID_Reservas,Fecha_Hora_Ingreso,Fecha_Hora_Egreso,Silla,Estado,Horas_reservadas,Sala,ID_Sucursal,ID_Cliente,ID_Usuario) 
VALUES 	(14202, '2022-01-11 08:11:00', '2023-01-11 18:00:00', 6, 'Realizada', 9,'Sala Innovation', '001', 5, 965823),
(14203, '2022-02-15 09:30:00', '2022-02-15 17:45:00', 8, 'Pendiente', 8, NULL, '002', 3, 478512),
(14204, '2022-03-20 10:45:00', '2022-03-20 16:30:00', 5, 'Cancelada', 7,NULL, '003', 2, 874512),
(14205, '2022-04-25 09:20:00', '2022-04-25 19:00:00', 10, 'Realizada', 7, NULL,'001', 7, 478512),
(14206, '2022-06-01 09:05:00', '2022-06-01 17:30:00', 7, 'Pendiente', 10, 'Sala Free','002', 4, 763254),
(14207, '2022-07-05 10:15:00', '2022-07-05 18:00:00', 12, 'Realizada', 10,NULL, '001', 9, 254836),
(14208, '2022-08-10 10:40:00', '2022-08-10 18:15:00', 9, 'Pendiente', 9, NULL,'001', 6, 365489),
(14209, '2022-09-15 10:55:00', '2022-09-15 19:45:00', 11, 'Cancelada', 8,'Sala Free', '003', 8, 923567),
(14210, '2022-10-20 09:30:00', '2022-10-20 18:00:00', 8, 'Realizada', 8, NULL,'002', 5, 654321),
(14211, '2022-11-25 07:20:00', '2022-12-30 17:55:00', 15, 'Pendiente', 8, NULL,'001', 10, 874512),
(15602,'2023-05-11 08:11:00','2023-05-11 18:00:00',6,'Realizada',9,NULL,001,5,143697),
(15612, '2023-08-11 08:11:00', '2023-08-11 18:00:00', 6, 'Realizada', 9,'Sala Spot', '001', 5, 143697),
(15603, '2023-08-12 09:30:00', '2023-08-12 17:45:00', 8, 'Pendiente', 1, NULL,'002', 3, 365489),
(15604, '2023-06-13 10:45:00', '2023-06-13 16:30:00', 5, 'Cancelada', 7, 'Sala Free','002', 2, 967341),
(15605, '2023-05-14 11:20:00', '2023-05-14 18:00:00', 10, 'Realizada', 1, NULL,'002', 7, 812476),
(15606, '2023-05-15 12:05:00', '2023-05-15 18:30:00', 7, 'Pendiente', 10, NULL,'001', 4, 634298),
(15607, '2023-05-16 13:15:00', '2023-05-16 16:00:00', 12, 'Realizada', 8, NULL,'001', 9, 791345),
(15608, '2023-06-17 14:40:00', '2023-06-17 17:15:00', 9, 'Pendiente', 4, 'Sala Happy break','003', 6, 365489),
(15609, '2023-06-18 09:55:00', '2023-06-18 16:45:00', 11, 'Cancelada', 1, NULL,'002', 8, 143697),
(15610, '2023-03-19 09:30:00', '2023-03-19 17:00:00', 8, 'Realizada', 1, 'Sala Big VIP','001', 5, 578943),
(15611, '2023-06-20 08:20:00', '2023-06-20 14:55:00', 15, 'Pendiente', 2, 'Sala Big VIP','003', 1, 478512)
;

/*---------------------------------------------------------------------------------------
VISTAS
---------------------------------------------------------------------------------------*/

USE Coworking;

CREATE VIEW FechaRes AS
(SELECT Estado, Sala, ID_Usuario, Fecha_Hora_Ingreso 
FROM reservas
ORDER BY Fecha_Hora_Ingreso desc);

SELECT * FROM FechaRes;
-----------------------------------------------------------------
CREATE VIEW Vista_Factu AS 
(SELECT ID_Cliente, costo, Tipo_de_Plan, Horas_extras 
FROM facturacion
order by costo desc);

SELECT * FROM Vista_Factu;
------------------------------------------------------------------

CREATE VIEW Vista_ReservasSucu AS 
SELECT Nombre_Sucursal, Estado, Horas_reservadas FROM reservas
JOIN sucursal where reservas.ID_Sucursal = sucursal.ID_Sucursal AND reservas.Estado = "Realizada";

SELECT * FROM Vista_ReservasSucu;

---------------------------------------------------------------------------------

CREATE VIEW Vista_FactuCliente AS 
SELECT Nombre_Cliente, Tipo_de_Cliente, costo FROM cliente
JOIN facturacion where cliente.ID_Cliente = facturacion.ID_Cliente AND costo >= 2000000
order by facturacion.Costo desc; 

SELECT * FROM Vista_FactuCliente;
------------------------------------------------------------------------------

CREATE VIEW Vista_ResUsuario AS 
SELECT Nombre, Apellido, Horas_reservadas FROM usuario
JOIN reservas where reservas.ID_usuario = usuario.ID_Usuario AND Horas_reservadas >= "8";

SELECT * FROM Vista_ResUsuario;

/**FUNCTION 1**/

 DELIMITER //
CREATE FUNCTION PorcentajeProfit (profit int, total int)
RETURNS int
deterministic
BEGIN
    DECLARE porcentaje int;
    SET porcentaje = profit * 100 / total;
    RETURN porcentaje;
END//

/**FUNCTION 2**/

DELIMITER //

CREATE FUNCTION ReservasXyear (ano INT)
RETURNS INT
reads sql data
BEGIN
declare total int;
select count(*) AS total into total from reservas
where year(fecha_hora_ingreso) = ano group by year(fecha_hora_ingreso);
       RETURN total;
END//

/**SP 1**/


DELIMITER $$
CREATE PROCEDURE `spOrdenCliente`(IN columna CHAR(20), IN orden CHAR(20))
BEGIN
	IF columna <> '' AND orden  <> ''  THEN
		SET @cliente_order = concat('ORDER BY ', columna,' ', orden);
	ELSE
		SET @cliente_order = '';
	END IF;
    
    SET @sentencia = concat('SELECT * FROM Cliente ', @cliente_order);
	PREPARE runSQL FROM @sentencia;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

call spOrdenCliente('Tipo_de_Cliente','ASC');
call spOrdenCliente('Telefono','DESC');




/**SP 2**/


DELIMITER $$
CREATE PROCEDURE `spInsertarSucursal`(IN id INT, IN nombre CHAR(50), IN direccion CHAR(50), IN provincia CHAR(50))
BEGIN
	IF id > 0 AND nombre <> '' AND direccion <> '' AND provincia <> '' THEN
		INSERT INTO Sucursal (ID_Sucursal,Nombre_Sucursal,Direccion,Provincia) VALUES (id,nombre,direccion,provincia);
   	END IF;
    
    SET @sentencia = 'SELECT * FROM Sucursal ORDER BY ID_Sucursal DESC ';
	PREPARE runSQL FROM @sentencia;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

call spInsertarSucursal(4,'WeWork_Champs','Montevideo 457','Salta');


use coworking;

# SUCURSAL

# Tabla de log para sucursal
CREATE TABLE logSucursal (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from logSucursal;

/*TRIGGER 1*/
/* Este Trigger se ejecuta antes de una inserción de datos, coloca en la tabla de LogSucursal quien hizo el insert y en qué fecha*/
CREATE TRIGGER trigger_log_before_insert
BEFORE INSERT ON sucursal 
FOR EACH ROW
INSERT INTO `logSucursal` (usuario, tipo) VALUES (SESSION_USER(), 'INSERT');

INSERT INTO `sucursal` (`ID_Sucursal`,`Nombre_Sucursal`,`Direccion`,`Provincia`) VALUES (12,'WeWork_Home', 'Chango 1234', 'Entre Rios');

select * from logSucursal;


/*TRIGGER 2*/
/* Este Trigger se ejecuta después de una actualización de datos, coloca en la tabla de LogSucursal quien hizo el update y en qué fecha*/
CREATE TRIGGER trigger_log_after_update
AFTER UPDATE ON sucursal
FOR EACH ROW
INSERT INTO `logSucursal` (usuario, tipo) VALUES (SESSION_USER(), 'UPDATE');

UPDATE `sucursal` SET `Nombre_Sucursal` = 'WeDontWork' WHERE `ID_Sucursal` = 12;

select * from logSucursal;


# Usuario

# Tabla de log para Usuario
CREATE TABLE logUsuario (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    modificador VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from logUsuario;

/*TRIGGER 1*/
/* Este se ejecuta antes de una inserción de datos, coloca en la tabla de logUsuario quien hizo el insert y en qué fecha*/
CREATE TRIGGER trigger_logUSER_before_insert
BEFORE INSERT ON Usuario 
FOR EACH ROW
INSERT INTO `logUsuario` (modificador, tipo) VALUES (SESSION_USER(), 'INSERT');

INSERT INTO `usuario` (`ID_Usuario`,`Nombre`,`Apellido`,`Edad`,`Mail`,`Telefono`,`ID_Cliente`) 
VALUES (65427,'Luis', 'Capriles', 45,'luis.capri@yahoo.com', 1165889654,6);

select * from logUsuario;

/*TRIGGER 2*/
/* Este Trigger se ejecuta después de una actualización de datos, coloca en la tabla de logUsuario quien hizo el update y en qué fecha*/
CREATE TRIGGER trigger_logUSER_after_update
AFTER UPDATE ON Usuario
FOR EACH ROW
INSERT INTO `logUsuario` (modificador, tipo) VALUES (SESSION_USER(), 'UPDATE');

UPDATE `Usuario` SET `Apellido` = 'Castor' WHERE `ID_Usuario` = 654321;

select * from logUsuario;


use mysql;

## Se deberán crear dos usuarios nuevos a los cuales se le asignará una serie de permisos.
## Uno de los usuarios creados deberá tener permisos de sólo lectura sobre todas las tablas.
## El otro usuario deberá tener permisos de Lectura, Inserción y Modificación de datos.
## Ninguno de ellos podrá eliminar registros de ninguna tabla.
## Cada sentencia GRANT y CREATE USER deberá estar comentada con lo que realiza la misma.

# Se crea el usuario "valentina" para el dominio "localhost" con el password "valenpass123"
CREATE USER valentina@localhost IDENTIFIED BY 'valenpass123';

# Se crea el usuario "facundo" para el dominio "localhost" con el password "facupass123"
CREATE USER facundo@localhost IDENTIFIED BY 'facupass123';

# Se le da permiso de Lectura, Inserción y Modificación (SELECT, INSERT, UPDATE) al usuario "valentina" para todas las tablas (*.*)
GRANT SELECT, INSERT, UPDATE ON *.* TO valentina@localhost;

# Se le da permiso de Lectura (SELECT) al usuario "facundo" para todas las tablas (*.*)
GRANT SELECT ON *.* TO facundo@localhost;

select * from mysql.user where user='valentina';
select * from mysql.user where user='facundo';

show grants for valentina@localhost;
show grants for facundo@localhost;

USE coworking;

SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;

# En la primera tabla, si tiene registros, deberás eliminar algunos de ellos iniciando previamente una transacción. 
# Si no tiene registros la tabla, reemplaza eliminación por inserción.
# Deja en una línea siguiente, comentado la sentencia Rollback, y en una línea posterior, la sentencia Commit.

# En la segunda tabla, inserta ocho nuevos registros iniciando también una transacción. 
# Agrega un savepoint a posteriori de la inserción del registro #4 y otro savepoint a posteriori del registro #8
# Agrega en una línea comentada la sentencia de eliminación de uno de los savepoint.

######### Tabla Cliente

START TRANSACTION;
INSERT INTO cliente (ID_Cliente, Nombre_Cliente, Tipo_de_Cliente, Mail, Telefono, Direccion) 
VALUES (11,"Netflix","large","netflix@netflixcompany.com","1536547894","Los Gatos, California");

#ROLLBACK;

#COMMIT;
    

######## Tabla Sucursal

START TRANSACTION;
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (13, "Sucursal 13", "Direccion 13", "Jujuy");
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (14, "Sucursal 14", "Direccion 14", "Jujuy");
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (15, "Sucursal 15", "Direccion 15", "Jujuy");
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (16, "Sucursal 16", "Direccion 16", "Jujuy");
savepoint lote_1;
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (17, "Sucursal 17", "Direccion 17", "Jujuy");
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (18, "Sucursal 18", "Direccion 18", "Jujuy");
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (19, "Sucursal 19", "Direccion 19", "Jujuy");
INSERT INTO sucursal (ID_Sucursal, Nombre_Sucursal, Direccion, Provincia) 
VALUES (20, "Sucursal 20", "Direccion 20", "Jujuy");
savepoint lote_2;

#RELEASE SAVEPOINT lote_1;



