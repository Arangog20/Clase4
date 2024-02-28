SHOW DATABASES;

/*crear tablas*/
CREATE TABLE estudiantes(
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY ,
    nombre VARCHAR (45) NOT NULL,
    apellido VARCHAR(45) NOT NULL
);
CREATE TABLE materias (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    materia  VARCHAR (45),
);
CREATE TABLE notas(
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    nota INT (45)  NOT NULL
);

/*Insertar tablas*/
INSERT INTO estudiantes (nombre,apellido)
VALUES('manuela','giraldo'),
('julian','roman'),
('lupe','lopez'),
('samuel','vera'),
('angel','rivera'),
('susana','valencia'),
('manuela','torres'),
('juana','sanchez'),
('pablo','sanabria'),
('malory','montejo');

INSERT INTO materias (materia)
VALUES('español'),
('politica'),
('matematicas'),
('ingles'),
('sociales'),
('historia'),
('quimica'),
('fisica'),
('tecnologia'),
('estadistica');
/*Seleccionar*/