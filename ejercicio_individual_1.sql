CREATE USER 'explorador'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE, DELETE, SELECT ON world.* TO 'explorador'@'localhost' WITH GRANT OPTION;
use world;
SHOW TABLES;
SELECT TABLE_NAME, TABLE_ROWS
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'world';

SELECT Name FROM city WHERE CountryCode IN ('ARG', 'BRA', 'BOL', 'CHL', 'ECU');
SELECT Language FROM countrylanguage WHERE CountryCode IN ('ARG', 'BRA', 'BOL', 'CHL', 'ECU');

/* +++ Cantidad de registros en cada caso +++
city: 4046 registros, country: 239 registros, countrylanguage: 984 registros */

/* +++ Cuántas ciudades existen en la base de datos? +++
4046*/

/* +++ Si se ordenan los países de acuerdo con su nombre ¿cuál sería el primero y cuál el último? +++
Aruba y Zimbawe */

/* +++ Tomando en cuenta todos los países de Sudamérica ¿cuántas ciudades existen entre todos ellos? +++
359 */

/* +++ Considerando todos los idiomas declarados en la base, ¿cuántos idiomas corresponden a países de
Sudamérica? +++
18 */

/* 
-Una base de datos es una coleccion estructurada de datos organizados, la cual esta alacenada y manejada por un sistema.
-Una tabla es un componente fundamental de una base de datos relacional. Representa una coleccion de datos organizados en filas y columnas.
-Un registro corresponde a una entidad o instancia en una tabla.
-Una columna representa un atributo especifico en una tabla.
-Una llave primaria es una columna o set de columnas en una tabla que identifica de manera unica cada fila en una tabla.
-Una llave foranea es una columna o set de columnas en una tabla que establece un vinculo o relacion hacia la llave primaria de otra tabla.

-La relacion entre una llave primaria y foranea se usa para conectar tablas relacionadas en una base de datos y forzar la integridad de los datos.
*/