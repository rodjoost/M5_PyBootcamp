-- SQLBook: Code

GRANT INSERT, UPDATE, DELETE, SELECT ON sakila.* TO 'admintienda'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE MiAplicacion;
USE MiAplicacion;

CREATE TABLE Usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  contrasena VARCHAR(100),
  zona_horaria VARCHAR(50) DEFAULT 'UTC-3',
  genero CHAR(1),
  telefono VARCHAR(15)
);

CREATE TABLE Ingresos (
  id_ingreso INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  fecha_hora_ingreso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

ALTER TABLE Usuarios 
MODIFY COLUMN zona_horaria VARCHAR(50) DEFAULT 'UTC-2';
INSERT INTO Usuarios (nombre, apellido, contrasena, genero, telefono) VALUES
  ('Aurora', 'Knight', 'moonlight2023', 'F', '987654321'),
  ('Caspian', 'Wilde', 'enchantedforest', 'M', '876543210'),
  ('Luna', 'Rivers', 'stardust123', 'F', '765432109'),
  ('Phoenix', 'Hart', 'firefly456', 'M', '654321098'),
  ('Nova', 'Stone', 'cosmicwaves', 'F', '543210987'),
  ('Orion', 'Dawn', 'celestial77', 'M', '432109876'),
  ('Aria', 'Valentine', 'harmony2023', 'F', '321098765'),
  ('Atlas', 'Winters', 'adventure42', 'M', '210987654');


INSERT INTO Ingresos (id_usuario) VALUES
(1), (2), (3), (4), (5), (6), (7), (8)

CREATE TABLE Contactos (
  id_contacto INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  numero_telefono VARCHAR(15),
  correo_electronico VARCHAR(100),
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

ALTER TABLE Usuarios 
DROP COLUMN telefono;

ALTER TABLE Usuarios 
ADD COLUMN id_contacto INT,
ADD FOREIGN KEY (id_contacto) REFERENCES Contactos(id_contacto);
