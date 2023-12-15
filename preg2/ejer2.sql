-- Crear una tabla de ejemplo (reemplázala con la estructura real de tu base de datos) 
CREATE TABLE calificaciones ( 
	alumno_id INT, 
	nombre VARCHAR(100), 
	materia VARCHAR(50), 
	nota INT 
);


-- Insertar algunos datos de ejemplo 
INSERT INTO calificaciones (alumno_id, nombre, materia, nota) VALUES 
(1, 'Juan', 'INF 324', 70), 
(2, 'María', 'INF 324', 55), 
(3, 'Pedro', 'MAT 101', 80), 
(4, 'Ana', 'MAT 101', 45), 
(5, 'Carlos', 'FIS 201', 90), 
(6, 'Laura', 'FIS 201', 58), 
(7, 'Roberto', 'MAT 101', 45), 
(8, 'Juanelo', 'FIS 201', 90), 
(9, 'Marcos', 'FIS 201', 58);


-- Consulta para obtener el número de alumnos aprobados y reprobados por materia 
SELECT materia, nombre, 
	COUNT(CASE WHEN nota >= 60 THEN 1 END) AS AlumnosAprobados, 
	COUNT(CASE WHEN nota < 60 THEN 1 END) AS AlumnosReprobados 
FROM calificaciones GROUP BY materia, nombre;