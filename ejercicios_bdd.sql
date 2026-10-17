-- Crear la tabla estudiantes
CREATE TABLE estudiantes (
    id_estudiante INT NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    edad INT,
    curso VARCHAR(50),
    fecha_registro VARCHAR(10),
    PRIMARY KEY (id_estudiante)
);
-- Inserción de los 15 registros requeridos para la Parte 3
INSERT INTO estudiantes VALUES (1, 'Juan', 'Perez', 20, 'Programacion', '2026-01-10', 'juan@gmail.com');
INSERT INTO estudiantes VALUES (2, 'Maria', 'Gomez', 22, 'Base de Datos', '2026-01-15', 'maria@gmail.com');
INSERT INTO estudiantes VALUES (3, 'Carlos', 'Lopez', 19, 'Programacion', '2026-02-05', 'carlos@gmail.com');
INSERT INTO estudiantes VALUES (4, 'Ana', 'Torres', 25, 'Redes', '2026-02-12', 'ana@gmail.com');
INSERT INTO estudiantes VALUES (5, 'Luis', 'Ramirez', 21, 'Base de Datos', '2026-02-20', 'luis@gmail.com');
INSERT INTO estudiantes VALUES (6, 'Sofia', 'Castillo', 23, 'Sistemas Operativos', '2026-03-02', 'sofia@gmail.com');
INSERT INTO estudiantes VALUES (7, 'Juan', 'Perez', 20, 'Base de Datos', '2026-03-10', 'juan.perez@gmail.com');
INSERT INTO estudiantes VALUES (8, 'Elena', 'Vargas', 24, 'Programacion', '2026-03-15', 'elena@gmail.com');
INSERT INTO estudiantes VALUES (9, 'David', 'Castro', 18, 'Redes', '2026-03-22', 'david@gmail.com');
INSERT INTO estudiantes VALUES (10, 'Lucia', 'Morales', 26, 'Sistemas Operativos', '2026-04-01', 'lucia@gmail.com');
INSERT INTO estudiantes VALUES (11, 'Maria', 'Gomez', 22, 'Programacion', '2026-04-10', 'maria.gomez@gmail.com');
INSERT INTO estudiantes VALUES (12, 'Jorge', 'Rojas', 27, 'Base de Datos', '2026-04-18', 'jorge@gmail.com');
INSERT INTO estudiantes VALUES (13, 'Valeria', 'Mendoza', 20, 'Redes', '2026-04-25', 'valeria@gmail.com');
INSERT INTO estudiantes VALUES (14, 'Mateo', 'Ortiz', 21, 'Programacion', '2026-05-02', 'mateo@gmail.com');
INSERT INTO estudiantes VALUES (15, 'Camila', 'Silva', 23, 'Base de Datos', '2026-05-10', 'camila@gmail.com');
-- 1. Mostrar todos los registros
SELECT * FROM estudiantes;

-- 2. Mostrar únicamente nombres y curso
SELECT nombres, curso FROM estudiantes;

-- 3. Mostrar estudiantes mayores de 18 años
SELECT * FROM estudiantes WHERE edad > 18;

-- 4. Mostrar estudiantes entre 18 y 25 años
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;

-- 5. Mostrar estudiantes del curso "Base de Datos"
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';

-- 6. Mostrar estudiantes registrados después de 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

-- 7. Mostrar estudiantes registrados entre 2026-01-01 y 2026-04-30
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';

-- 1. Cambiar el curso de un estudiante (Ejemplo del taller)
UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;

-- 2. Cambiar la edad de un estudiante
UPDATE estudiantes SET edad = 23 WHERE id_estudiante = 2;

-- 3. Cambiar la fecha de registro de un estudiante
UPDATE estudiantes SET fecha_registro = '2026-01-20' WHERE id_estudiante = 3;

-- 4. Cambiar el curso y la edad de un estudiante al mismo tiempo
UPDATE estudiantes SET curso = 'Ciberseguridad', edad = 26 WHERE id_estudiante = 4;

-- 5. Cambiar los nombres y apellidos de un estudiante
UPDATE estudiantes SET nombres = 'Roberto', apellidos = 'Mora' WHERE id_estudiante = 5;


-- 1. Eliminar un registro por ID 
DELETE FROM estudiantes WHERE id_estudiante = 14;

-- 2. Eliminar registros por curso
DELETE FROM estudiantes WHERE curso = 'Redes';

-- 3. Eliminar registros por edad (ejemplo: estudiantes menores de 19 años)
DELETE FROM estudiantes WHERE edad < 19;

-- 4. Eliminar un registro específico por ID
DELETE FROM estudiantes WHERE id_estudiante = 10;

-- 5. Eliminar registros por un curso específico y una edad determinada
DELETE FROM estudiantes WHERE curso = 'Sistemas Operativos' AND edad = 26;

-- Agregar la nueva columna correo a la tabla estudiantes
ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);

UPDATE estudiantes SET correo = 'juan@gmail.com' WHERE id_estudiante = 1;
UPDATE estudiantes SET correo = 'maria@gmail.com' WHERE id_estudiante = 2;
UPDATE estudiantes SET correo = 'carlos@gmail.com' WHERE id_estudiante = 3;
UPDATE estudiantes SET correo = 'ana@gmail.com' WHERE id_estudiante = 4;
UPDATE estudiantes SET correo = 'luis@gmail.com' WHERE id_estudiante = 5;
UPDATE estudiantes SET correo = 'sofia@gmail.com' WHERE id_estudiante = 6;
UPDATE estudiantes SET correo = 'juan.perez@gmail.com' WHERE id_estudiante = 7;
UPDATE estudiantes SET correo = 'elena@gmail.com' WHERE id_estudiante = 8;
UPDATE estudiantes SET correo = 'david@gmail.com' WHERE id_estudiante = 9;
UPDATE estudiantes SET correo = 'lucia@gmail.com' WHERE id_estudiante = 10;
UPDATE estudiantes SET correo = 'maria.gomez@gmail.com' WHERE id_estudiante = 11;
UPDATE estudiantes SET correo = 'jorge@gmail.com' WHERE id_estudiante = 12;
UPDATE estudiantes SET correo = 'valeria@gmail.com' WHERE id_estudiante = 13;
UPDATE estudiantes SET correo = 'mateo@gmail.com' WHERE id_estudiante = 14;
UPDATE estudiantes SET correo = 'camila@gmail.com' WHERE id_estudiante = 15;

-- 1. Mostrar estudiantes registrados después de 2026-02-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';

-- 2. Mostrar estudiantes registrados antes de 2026-05-01
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';

-- 3. Mostrar estudiantes registrados entre dos fechas (ejemplo: entre 2026-02-01 y 2026-04-30)
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-04-30';

-- 4. Mostrar estudiantes registrados exactamente en 2026-03-15
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';

-- 5. Mostrar estudiantes del curso "Programacion" registrados después de 2026-01-01
SELECT * FROM estudiantes WHERE curso = 'Programacion' AND fecha_registro > '2026-01-01';