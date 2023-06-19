CREATE DATABASE ejer_4;
CREATE USER 'rod'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE, DELETE, SELECT ON ejer_4.* TO 'rod'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

use ejer_4;

CREATE TABLE usuarios_app(
id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
contrasena VARCHAR(50) NOT NULL,
zona_horaria VARCHAR(50) NOT NULL,
genero VARCHAR(50) NOT NULL,
telefono INT NOT NULL
);

INSERT INTO usuarios_app(nombre, apellido, contrasena, zona_horaria, genero, telefono)
VALUES
('Sol', 'Invictus', 'jdhadih', 'UTC-3', 'M', 6458393),
('Waton', 'Loyola', 'eafafff', 'UTC-3', 'M', 53454777),
('Rongu', 'Chan', 'dgdgsdg', 'UTC-3', 'M', 84846867),
('Arimbi', 'Jaya', 'fgfggfd', 'UTC-3', 'F', 83875486),
('Toto', 'Reto', 'gigigij', 'UTC-3', 'M', 95869688),
('Zephyr', 'Moonshadow', '3irdW0rld!', 'UTC-3', 'M', 11223344),
('Luna', 'Thunderstrike', 'm@g1cSp@rk$', 'UTC-3', 'F', 55667788),
('Ragnar', 'Shadowblade', 'Dr@gon$1ayer', 'UTC-3', 'M', 99988877);


CREATE TABLE fecha_ingreso(
id_ingreso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_usuario INT NOT NULL,
evento_ingreso TIME
);

INSERT INTO fecha_ingreso(id_usuario, evento_ingreso)
VALUES
(1, CURRENT_TIME),
(2, CURRENT_TIME),
(3, CURRENT_TIME),
(4, CURRENT_TIME),
(5, CURRENT_TIME),
(6, CURRENT_TIME),
(7, CURRENT_TIME),
(8, CURRENT_TIME);


CREATE TABLE cantidad_ingresos(
id_usuario INT,
nombre_usuario VARCHAR(50),
n_ingreso INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO cantidad_ingresos(id_usuario, nombre_usuario)
VALUES
(1, 'Solaris'),
(2, 'watonazus'),
(3, 'RONGUUU'),
(4, 'ARIM'),
(5, 'totex'),
(6, 'z3phyr'),
(7, 'Lunaris'),
(8, 'r4gnar');

DROP TABLE cantidad_ingresos;

