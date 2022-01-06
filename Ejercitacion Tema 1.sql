/*
Cree una tabla llamada CURSO con los atributos:
Código de curso (clave primaria, entero no nulo)
Nombre (varchar no nulo)
Descripcion (varcha)
Turno (varchar no nulo)
Agregue un campo “cupo” de tipo numérico
Inserte datos en la tabla:
(101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
(102, “Matemática Discreta”,””,”Tarde”,30)
Intente ingresar un registro con el nombre nulo y verifique que no funciona.
Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.
Actualice, para todos los cursos, el cupo en 25.
Elimine el curso Algoritmos.
*/

CREATE TABLE curso (
	codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  	nombre VARCHAR(50) NOT NULL,
  	descripcion VARCHAR(150) NULL,
  	turno VARCHAR(20) NOT NULL
);

ALTER TABLE curso ADD cupo INT;

INSERT INTO `curso` VALUES (101,'Algoritmos','Algoritmos y Estructura de datos','Mañana',35);
INSERT INTO `curso` VALUES (102,'Matematica Discreta','','Tarde',30);
INSERT INTO `curso` VALUES (104,'Aprendiendo desarrollo de software','Tarde',25); #ERROR: Nombre no puede ser nulo
INSERT INTO `curso` VALUES (101,'Java para todos','Aprendiendo desarrollo de software','Tarde',25); #ERROR: Primary Key repetida

UPDATE curso SET cupo = 25;

DELETE FROM curso WHERE nombre = 'Algoritmos';
