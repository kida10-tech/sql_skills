/*
- Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.
- Todos los profesores cuyo salario sea mayor o igual a 65000.
- Todos los profesores que nacieron en la década del 80.
- 5 registros
- Todos los profesores cuyo apellido inicie con la letra “P”
- Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
*/

-- 1
SELECT nombre, apellido, fecha_nacimiento
FROM profesor
ORDER BY fecha_nacimiento ASC;

-- 2
SELECT * FROM profesor
WHERE salario >= 65000;

-- 3
SELECT * FROM profesor
WHERE fecha_nacimiento
BETWEEN '1980-01-01' AND '1989-12-31';

-- 4
SELECT * FROM profesor
LIMIT 5;

-- 5
SELECT * FROM profesor
WHERE apellido LIKE 'P%';

-- 6
SELECT * FROM profesor
WHERE fecha_nacimiento
BETWEEN '1980-01-01' AND '1989-12-31'
AND salario > 80000;
