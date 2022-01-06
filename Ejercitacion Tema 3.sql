-- 1
SELECT nombre, apellido, fecha_nacimiento
FROM profesor
ORDER BY fecha_nacimiento ASC;

-- 2
SELECT * FROM profesor
WHERE salario >= 45000;

-- 3
SELECT * FROM profesor
WHERE fecha_nacimiento
BETWEEN '1980-01-01' AND '1989-12-31';

-- 4
SELECT * FROM profesor
LIMIT 2;

-- 5
SELECT * FROM profesor
WHERE apellido LIKE 'P%';

-- 6
SELECT * FROM profesor
WHERE fecha_nacimiento
BETWEEN '1980-01-01' AND '1989-12-31'
AND salario > 50000;