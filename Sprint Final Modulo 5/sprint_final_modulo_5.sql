-- SQLBook: Code

CREATE DATABASE Sprint;
CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON Sprint.* TO 'usuario'@'localhost';
USE Sprint;

CREATE TABLE Usuario(
ID_usuario INT AUTO_INCREMENT,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Edad INT,
Email VARCHAR(100),
Numero_usos INT DEFAULT 1,
PRIMARY KEY(ID_usuario)
);

CREATE TABLE Operario(
ID_operario INT AUTO_INCREMENT,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Edad INT,
Email VARCHAR(100),
Numero_Soportes INT DEFAULT 1,
PRIMARY KEY(ID_operario)
);

CREATE TABLE Soporte(
ID_soporte INT AUTO_INCREMENT,
ID_usuario INT,
ID_operario INT,
Fecha DATE,
Evaluacion INT,
PRIMARY KEY(ID_soporte),
FOREIGN KEY(ID_usuario) REFERENCES Usuario(ID_usuario),
FOREIGN KEY(ID_operario) REFERENCES Operario(ID_operario)
);

-- Agregar Usuarios
INSERT INTO Usuario(Nombre, Apellido, Edad, Email, Numero_usos) 
VALUES 
('John', 'Doe', 30, 'johndoe@gmail.com', 3),
('Jane', 'Doe', 28, 'janedoe@gmail.com', 2),
('Jim', 'Beam', 32, 'jimbeam@gmail.com', 5),
('Jack', 'Daniels', 33, 'jackdaniels@gmail.com', 4),
('Johnny', 'Walker', 35, 'johnnywalker@gmail.com', 3);

-- Agregar Operarios
INSERT INTO Operario(Nombre, Apellido, Edad, Email, Numero_Soportes) 
VALUES 
('Carlos', 'Perez', 27, 'carlosperez@gmail.com', 8),
('Miguel', 'Lopez', 30, 'miguellopez@gmail.com', 6),
('Maria', 'Garcia', 29, 'mariagarcia@gmail.com', 9),
('Ana', 'Martinez', 25, 'anamartinez@gmail.com', 7),
('Jose', 'Hernandez', 31, 'josehernandez@gmail.com', 8);

-- Agregar Operaciones de Soporte
INSERT INTO Soporte(ID_usuario, ID_operario, Fecha, Evaluacion) 
VALUES
(1, 1, '2023-04-30', 5),
(2, 2, '2023-05-01', 4),
(3, 3, '2023-05-02', 6),
(4, 4, '2023-05-03', 3),
(5, 5, '2023-05-04', 7),
(1, 2, '2023-05-05', 2),
(2, 3, '2023-05-06', 6),
(3, 4, '2023-05-07', 1),
(4, 5, '2023-05-08', 7),
(5, 1, '2023-05-09', 5);

-- 3 operaciones con mejor evaluación
SELECT * FROM Soporte ORDER BY Evaluacion DESC LIMIT 3;

-- 3 operaciones con menor evaluación
SELECT * FROM Soporte ORDER BY Evaluacion ASC LIMIT 3;

-- Operario que más soportes ha realizado
SELECT ID_operario, COUNT(*) AS total_soportes
FROM Soporte
GROUP BY ID_operario
ORDER BY total_soportes DESC
LIMIT 1;

-- Cliente que menos veces ha utilizado la aplicación
SELECT * FROM Usuario ORDER BY Numero_usos ASC LIMIT 1;

-- Agregar 10 años a los tres primeros usuarios registrados
UPDATE Usuario SET Edad = Edad + 10 WHERE ID_usuario IN (1, 2, 3);

-- Renombrar todas las columnas 'correo electrónico' a 'email'
ALTER TABLE Usuario CHANGE Email email VARCHAR(100);
ALTER TABLE Operario CHANGE Email email VARCHAR(100);

-- Seleccionar solo los operarios mayores de 20 años
SELECT * FROM Operario WHERE Edad > 20;
