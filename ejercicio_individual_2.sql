use sakila;

CREATE USER 'rod'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE, DELETE, SELECT ON sakila.* TO 'rod'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE DATABASE otro_mundo;

use otro_mundo;

CREATE TABLE operadores(
	RUN INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(50),
    correo VARCHAR(50) NOT NULL,
    fecha_de_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO operadores(nombre, apellido, direccion, correo)
VALUES
    ('Sol', 'Invictus', 'Drake Bridge #777', 'solaire@gmail.com'),
    ('Waton', 'Loyola', 'Panguipulli #069', 'watiki@gmail.com'),
    ('Rongu', 'Chan', 'Shibouya #764', 'ronguchan@gmail.com'),
    ('Arimbi', 'Jaya', 'Subida Ecuador #555', 'arimbex@gmail.com'),
    ('Toto', 'Reto', 'Lerdi Aisle #34', 'totoretus@gmail.com'),
    ('Kentaro', 'Miura', 'Chiba #76', 'kentaro.kun@gmail.co.jp'),
    ('Iñor', 'Gardameh', 'V. Mar Alto #56', 'garda@gmail.com'),
    ('Yga', 'Bert', 'Cristobal Colon #82', 'ygabert@gmail.com'),
    ('Louis', 'CK', '10th Street #64', 'louis.ck@gmail.com'),
    ('Nigerian', 'Prince', 'Lagos #420', 'totallynotascam@gmail.com');

CREATE TABLE usuarios(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    telefono INT NOT NULL,
    fecha_de_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO usuarios (nombre, apellido, correo, telefono)
VALUES
    ('Scooby','Doo','dooby.doo@gmail.com','20087200'),
    ('Shaggy', 'Rogers', 'shaggy.rogers@gmail.com', '12345678'),
    ('Velma', 'Dinkley', 'velma.dinkley@gmail.com', '98765432'),
    ('Fred', 'Jones', 'fred.jones@gmail.com', '24681357'),
    ('Daphne', 'Blake', 'daphne.blake@gmail.com', '13579246'),
    ('Scrappy', 'Doo', 'scrappy.doo@gmail.com', '36925814'),
    ('Scooby', 'Dum', 'scooby.dum@gmail.com', '78521496'),
    ('Red', 'Herring', 'red.herring@gmail.com', '15935724'),
    ('Norville', 'Rogers', 'norville.rogers@gmail.com', '02468135'),
    ('Dynomutt', 'Dog Wonder', 'dynomutt@gmail.com', '13579246');


CREATE TABLE capacitacion(
    codigo_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    horario VARCHAR(50) NOT NULL,
    costo INT NOT NULL,
    fecha DATE NOT NULL
);
INSERT INTO capacitacion(nombre, horario, costo, fecha)
VALUES
    ('Pepe', '10 am', '100000', '2023-03-05'),
    ('Gina', '2 pm', '50000', '2023-07-12'),
    ('Max', '4 pm', '75000', '2023-09-23'),
    ('Linda', '11 am', '90000', '2023-06-30'),
    ('Carlos', '9 am', '60000', '2023-08-17'),
    ('Sophia', '3 pm', '85000', '2023-10-08'),
    ('Juan', '12 pm', '70000', '2023-11-21'),
    ('Emma', '1 pm', '55000', '2023-12-04'),
    ('Daniel', '10 am', '80000', '2023-09-12'),
    ('Isabella', '2 pm', '65000', '2023-07-29');
 
SELECT * FROM operadores ORDER BY fecha_de_creacion DESC LIMIT 5; 
SELECT * FROM usuarios ORDER BY fecha_de_creacion DESC LIMIT 5;
SELECT DATEDIFF(CURDATE(), (fecha_de_creacion)) AS dias_desde_creacion FROM operadores;
SELECT DATEDIFF(CURDATE(), (fecha_de_creacion)) AS dias_desde_creacion FROM usuarios;
SELECT DATEDIFF(CURDATE(), MAX(fecha)) AS dias_desde_ultimo_curso FROM capacitacion;
SELECT MAX(costo) AS mayor_costo, MIN(costo) AS menor_costo FROM capacitacion;



