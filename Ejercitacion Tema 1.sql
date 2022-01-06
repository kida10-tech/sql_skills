CREATE TABLE curso (
	codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  	nombre VARCHAR(50) NOT NULL,
  	descripcion VARCHAR(150) NULL,
  	turno VARCHAR(20) NOT NULL
);

ALTER TABLE curso ADD cupo INT;

INSERT INTO `curso` VALUES (101,'Algoritmos','Algoritmos y Estructura de datos','Mañana',35);
INSERT INTO `curso` VALUES (102,'Matematica Discreta','','Tarde',30);
INSERT INTO `curso` VALUES (104,'Aprendiendo desarrollo de software','Tarde',25);
INSERT INTO `curso` VALUES (101,'Java para todos','Aprendiendo desarrollo de software','Tarde',25);

UPDATE curso SET cupo = 25;

DELETE FROM curso WHERE nombre = 'Algoritmos';