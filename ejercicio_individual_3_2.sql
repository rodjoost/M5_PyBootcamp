CREATE DATABASE usuarios_ejer3_2;
GRANT INSERT, UPDATE, DELETE, SELECT ON usuarios_ejer3_2.* TO 'rod'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

use usuarios_ejer3_2;

CREATE TABLE usuarios_pasivos(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
telefono INT NOT NULL,
genero VARCHAR(50) NOT NULL
);

INSERT INTO usuarios_pasivos(nombre, apellido, email, telefono, genero)
VALUES
('Sol', 'Invictus', 'solaire@gmail.com', 6458393, 'M'),
('Waton', 'Loyola', 'watiki@gmail.com', 7393575, 'M'),
('Rongu', 'Chan', 'ronguchan@gmail.com', 8737548, 'M'),
('Arimbi', 'Jaya', 'arimbex@gmail.com', 8475945, 'F'),
('Toto', 'Reto', 'totoretus@gmail.com', 83575385, 'M');


CREATE TABLE usuarios_especiales(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
telefono INT NOT NULL,
genero VARCHAR(50) NOT NULL
);

START TRANSACTION;

INSERT INTO usuarios_especiales (nombre, apellido, email, telefono, genero)
SELECT nombre, apellido, email, telefono, genero
FROM usuarios_pasivos
WHERE ID IN (1, 2, 3); 

DELETE FROM usuarios_pasivos
WHERE ID IN (1, 2, 3); 

COMMIT;

