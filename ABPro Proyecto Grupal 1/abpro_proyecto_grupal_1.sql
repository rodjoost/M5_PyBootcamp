use sakila;

CREATE USER 'admintienda'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE, DELETE, SELECT ON sakila.* TO 'admintienda'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE DATABASE te_lo_vendo;

use te_lo_vendo;

CREATE TABLE cliente(
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    telefono INT,
    dirección VARCHAR(50),
    comuna VARCHAR(50),
    correo VARCHAR(50) NOT NULL,
    fecha_de_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id_cliente)
);
INSERT INTO cliente(nombres, apellidos, telefono, dirección, comuna, correo)
VALUES
    ('Goku', 'Perez', '98562354', 'calle calle #123', 'Callelarga', 'g.perez@gmail.com'),
    ('Santo', 'Padre', '54602354', 'calle centenario #123', 'Polpaico', 'sant.sant123@gmail.com'),
    ('Bar', 'Sinso', '69420666', 'calle falsa #123', 'Springfield', 'bar69.420@hotmail.com'),
    ('Floripondio', 'Buenaventura', '54362354', 'chantilli', 'Chantiago', 'flor_hermosa65@gmail.com'),
    ('Chosen', 'Undead', '57575757', 'firelink shrine #666', 'Lordran', 'firekeeper@gmail.com');

CREATE TABLE producto(
    SKU INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    stock INT NOT NULL
);
INSERT INTO producto (nombre, categoria, fabricante, stock)
VALUES
    ('Thermomix','electrodomestico','forfor','10'),
    ('PS5','computación','sony','15'),
    ('Lavadora','linea blanca','samnsung','8'),
    ('Platano','Frutas','dole','999'),
    ('Celular','Telfonia','Huawei','15'),
    ('Sillon','mueble','rosen','5'),
    ('Celular','Telefonia','Samsung','20'),
    ('Calcetin','Vestimenta','yga','79'),
    ('x','manga','clamp','15'),
    ('Sarten','Cocina','Volcan','25');


CREATE TABLE vendedor(
    RUN INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    fecha_de_nacimiento INT NOT NULL,
    seccion VARCHAR(50) NOT NULL
);

INSERT INTO vendedor(nombre, apellidos, fecha_de_nacimiento, sección)
VALUES
    ('Pepe','Grillo','15/03/1981','electrodomesticos'),
    ('Sigmund','Froid','18/11/1973','manga'),
    ('Waton','Loyola','01/08/1995','muebles'),
    ('Wenceslao','Vargas Rojas','19/05/1861','linea blanca'),
    ('Kurt','Cobain','20/02/1967','Cocina');

