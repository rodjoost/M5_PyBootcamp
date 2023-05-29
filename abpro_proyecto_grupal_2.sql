

CREATE USER 'admintienda'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE, DELETE, SELECT ON sakila.* TO 'admintienda'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;



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
    ('Platano','Frutas','dole','999', '1000'),
    ('Celular','Telfonia','Huawei','15', '100000'),
    ('Sillon','mueble','rosen','5', '300000'),
    ('Celular','Telefonia','Samsung','20', '900000'),
    ('Calcetin','Vestimenta','yga','79', '1500'),
    ('x','manga','clamp','15', '10000'),
    ('Sarten','Cocina','Volcan','25', '20000');


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
    
-- PREGUNTAS:

-- G. Seleccione los vendedores que tienen un salario superior al promedio.
SELECT * FROM vendedor WHERE salario > (SELECT AVG(salario) FROM vendedor) ORDER BY salario DESC;

-- H. Seleccione los productos más caros que el promedio.
SELECT * FROM producto WHERE precio > (SELECT AVG(precio) FROM producto) ORDER BY precio DESC;

-- I. Seleccione los clientes que han pagado más que el promedio.
SELECT * FROM cliente WHERE total_pagado > (SELECT AVG(total_pagado) FROM cliente) ORDER BY total_pagado DESC;

-- J. Indique cuántos vendedores tienen un salario inferior al promedio.
SELECT COUNT(*) FROM vendedor WHERE salario < (SELECT AVG(salario) FROM vendedor);

-- K. Indique cuántos productos son más baratos que el promedio.
SELECT COUNT(*) FROM producto WHERE precio < (SELECT AVG(precio) FROM producto);

-- L. Seleccione el nombre y el apellido de los vendedores que tienen un salario superior al promedio.
SELECT nombre, apellidos FROM vendedor WHERE salario > (SELECT AVG(salario) FROM vendedor) ORDER BY salario DESC;

-- M. Indique cuál es el producto más barato y el producto más caro del inventario.
SELECT * FROM producto WHERE precio = (SELECT MIN(precio) FROM producto);
SELECT * FROM producto WHERE precio = (SELECT MAX(precio) FROM producto);

-- N. Indique cuál es el costo de comprar uno de cada producto en el inventario.
SELECT SUM(precio) FROM producto;

-- O. Identifique la comuna que tiene más clientes registrados.
SELECT comuna, COUNT(*) as cantidad FROM cliente GROUP BY comuna ORDER BY cantidad DESC LIMIT 1;

-- P. Identifique los productos que tienen más de 5 unidades en stock.
SELECT * FROM producto WHERE stock > 5 ORDER BY stock ASC;

-- Respuesta adicional:
-- El campo AUTO INCREMENT en una columna de atributo permite que los valores de esa columna se generen automáticamente al insertar nuevos registros en la tabla. Cada vez que se inserta un nuevo registro, el valor de la columna AUTO INCREMENT se incrementa automáticamente en 1. Esto es útil cuando se desea asignar automáticamente valores únicos a una columna, como un identificador único para cada registro. El campo AUTO INCREMENT garantiza que cada nuevo registro tenga un valor único y secuencial en la columna especificada, lo que simplifica el proceso de inserción de datos y evita la necesidad de asignar manualmente valores únicos a esa columna.



























