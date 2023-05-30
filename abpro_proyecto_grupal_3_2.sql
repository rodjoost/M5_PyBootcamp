CREATE USER 'admintienda'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE, DELETE, SELECT ON sakila.* TO 'admintienda'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE DATABASE te_lo_vendo;

use te_lo_vendo;

CREATE TABLE cliente(
	id_cliente INT NOT NULL PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    telefono INT,
    dirección VARCHAR(50),
    comuna VARCHAR(50),
    correo VARCHAR(50) NOT NULL,
    fecha_de_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_pagado INT NOT NULL
);

INSERT INTO cliente(id_cliente, nombres, apellidos, telefono, dirección, comuna, correo, total_pagado)
VALUES
    ('1', 'Goku', 'Perez', '98562354', 'calle calle #123', 'Callelarga', 'g.perez@gmail.com', '500000'),
    ('2', 'Santo', 'Padre', '54602354', 'calle centenario #123', 'Polpaico', 'sant.sant123@gmail.com', '600000'),
    ('3','Bar', 'Sinso', '69420666', 'calle falsa #123', 'Springfield', 'bar69.420@hotmail.com', '20000'),
    ('4', 'Floripondio', 'Buenaventura', '54362354', 'chantilli', 'Chantiago', 'flor_hermosa65@gmail.com', '200000'),
    ('5', 'Chosen', 'Undead', '57575757', 'firelink shrine #666', 'Lordran', 'firekeeper@gmail.com', '300000'),
    ('6', 'Bruce', 'Wayne', '98765432', 'calle Wayne #123', 'Gotham City', 'bruce.wayne@gmail.com', '1500000'),
    ('7', 'Lara', 'Croft', '12345678', 'calle aventurera #456', 'Tomb Raider', 'lara.croft@gmail.com', '900000'),
    ('8', 'Walter', 'White', '87654321', 'calle química #789', 'Albuquerque', 'wwhite@gmail.com', '5000000'),
    ('9', 'Elsa', 'Frozen', '55555555', 'calle helada #999', 'Arendelle', 'elsa.frozen@gmail.com', '300000'),
    ('10', 'Sherlock', 'Holmes', '11111111', 'Baker Street #221B', 'Londres', 'sherlock.holmes@gmail.com', '700000'),
    ('11', 'Santo', 'Padre', '54602354', 'calle centenario #123', 'Polpaico', 'sant.sant123@gmail.com', '600000'),
    ('12', 'Chosen', 'Undead', '57575757', 'firelink shrine #666', 'Lordran', 'firekeeper@gmail.com', '300000'),
    ('13', 'Alice', 'Wonderland', '87654321', 'calle imaginaria #234', 'País de las Maravillas', 'alice.wonderland@gmail.com', '250000'),
    ('14', 'Tony', 'Stark', '98765432', 'calle millonaria #001', 'Malibú', 'tony.stark@gmail.com', '1000000'),
	('15', 'Naruto', 'Uzumaki', '98765432', 'calle ninja #456', 'Konoha', 'naruto@gmail.com', '400000');

-- Agregar 5 clientes
INSERT INTO cliente(id_cliente, nombres, apellidos, telefono, dirección, comuna, correo, total_pagado)
VALUES
    ('16', 'Lilac', 'Garcia', '98765432', 'amethyst', 'Lavender', 'lilacgarcia@gmail.com', '180000'),
    ('17', 'Rose', 'Martinez', '45678901', 'tulip', 'Rosalinda', 'rosemartinez@gmail.com', '250000'),
    ('18', 'Daisy', 'Hernandez', '12345678', 'sunflower', 'DaisyMay', 'daisyhernandez@gmail.com', '300000'),
    ('19', 'Iris', 'Lopez', '87654321', 'lily', 'IrisLily', 'irislopez@gmail.com', '220000'),
    ('20', 'Violet', 'Sanchez', '23456789', 'dahlia', 'Violette', 'violetsanchez@gmail.com', '190000');

CREATE TABLE producto(
    SKU INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    stock INT NOT NULL,
    precio INT NOT NULL
);

INSERT INTO producto (nombre, categoria, fabricante, stock, precio)
VALUES
    ('Thermomix','electrodomestico','forfor','10', '200000'),
    ('PS5','computación','sony','15', '500000'),
    ('Lavadora','linea blanca','samnsung','8', '150000'),
    ('Platano','frutas','dole','999', '1000'),
    ('Celular','telefonia','Huawei','15', '100000'),
    ('Sillon','mueble','rosen','5', '300000'),
    ('Celular','telefonia','Samsung','20', '900000'),
    ('Calcetin','vestimenta','yga','79', '1500'),
    ('x','manga','clamp','15', '10000'),
    ('Sarten','cocina','Volcan','25', '20000');

-- Actualizacion de productos.

INSERT INTO producto (nombre, categoria, fabricante, stock, precio)
VALUES
    ('cama', 'muebles', 'ikea', '15', '450000'),
    ('televison', 'tecnologia', 'samsung', '20', '550000'),
    ('puerta', 'construccion', 'easy', '30', '40000'),
    ('aspiradpra', 'electrohogar', 'lg', '20', '30000'),
    ('juguera', 'cocina', 'ursustroter', '10', '10000');
    


CREATE TABLE vendedor(
    RUN INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    fecha_de_nacimiento DATE NOT NULL,
    seccion VARCHAR(50) NOT NULL,
    salario INT NOT NULL
);

INSERT INTO vendedor(RUN,nombre, apellidos, fecha_de_nacimiento, seccion, salario)
VALUES
    ('18963259','Pepe','Grillo','1981-02-26','electrodomesticos', '500000'),
    ('16975463','Sigmund','Froid','1973-11-18','manga', '800000'),
    ('34129867','Waton','Loyola','1995-08-01','muebles', '750000'),
    ('23446575','Wenceslao','Vargas Rojas','1961-05-19','linea blanca','600000'),
    ('158997656','Kurt','Cobain','1967-02-20','Cocina', '550000'),
    ('153946789','John', 'Doe', '1990-05-20', 'electronics', '850000'),
    ('154623698','Jane', 'Smith', '1985-12-10', 'furniture', '1000000'),
    ('125634976','Mark', 'Johnson', '1978-09-25', 'clothing', '700000'),
    ('168356251','Anna', 'Lee', '1993-07-18', 'books', '650000');
    
-- Agregar 5 vendedores
INSERT INTO vendedor(RUN,nombre, apellidos, fecha_de_nacimiento, seccion, salario)
VALUES
    ('274829156', 'John', 'Smith', '1988-03-12', 'musica', '450000'),
    ('102745309', 'Emily', 'Johnson', '1990-09-25', 'cine', '720000'),
    ('438512907', 'Michael', 'Brown', '1985-11-02', 'arte', '520000'),
    ('693784215', 'Sarah', 'Davis', '1996-05-09', 'fotografia', '380000'),
    ('825194637', 'David', 'Wilson', '1992-12-01', 'deportes', '590000');

-- Agregando columna de TLCOINS
ALTER TABLE cliente
ADD TLV_COINS INT DEFAULT 0;

SET SQL_SAFE_UPDATES = 0;
UPDATE cliente
set TLV_COINS=FLOOR(1000 + RAND() * 400000);


START TRANSACTION;
UPDATE cliente SET TLV_COINS = TLV_COINS - 200 WHERE id_cliente = 1;
UPDATE cliente SET TLV_COINS = TLV_COINS + 200 WHERE id_cliente = 2;
SELECT TLV_COINS >= 200 AS saldo_suficiente
FROM cliente
WHERE id_cliente = 1;
ROLLBACK;


-- Transferir 150 TLV Coins de B a C
START TRANSACTION;
UPDATE cliente SET TLV_COINS = TLV_COINS - 150 WHERE id_cliente = 2;
UPDATE cliente SET TLV_COINS = TLV_COINS + 150 WHERE id_cliente = 3;
SELECT TLV_COINS >= 150 AS saldo_suficiente
FROM cliente
WHERE id_cliente = 2;

ROLLBACK;


-- Transferir 500 TLV Coins de C a D
START TRANSACTION;
UPDATE cliente SET TLV_COINS = TLV_COINS - 500 WHERE id_cliente = 3;
UPDATE cliente SET TLV_COINS = TLV_COINS + 500 WHERE id_cliente = 4;
SELECT TLV_COINS >= 500 AS saldo_suficiente
FROM cliente
WHERE id_cliente = 3;
COMMIT;



-- Transferir 200 TLV Coins de D a A
START TRANSACTION;
UPDATE cliente SET TLV_COINS = TLV_COINS - 200 WHERE id_cliente = 4;
UPDATE cliente SET TLV_COINS = TLV_COINS + 200 WHERE id_cliente = 1;
SELECT TLV_COINS >= 200 AS saldo_suficiente
FROM cliente
WHERE id_cliente = 4;
COMMIT;













