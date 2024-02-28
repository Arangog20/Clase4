SHOW DATABASES;

--CREAR TABLA
CREATE TABLE vehiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR (45),
    placa VARCHAR(45),
    id_color INT,
    id_tipo INT 
);

DROP TABLE vehiculos,tipo_vehiculo,marcas,colores;

CREATE TABLE tipo_vehiculo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(45),
    id_marca INT
);
CREATE TABLE marcas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(45)
);
CREATE TABLE colores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR (45)
);


--INSERTAR EN TABLA
INSERT INTO colores (color) 
VALUES ('blanco'),('negro');

INSERT INTO marcas (marca) 
VALUES ('audi'),('fiat');

INSERT INTO tipo_vehiculo (tipo,id_marca) 
VALUES ('camioneta'),('automovil');

INSERT INTO vehiculos (modelo,placa,id_color,id_tipo) 
VALUES('2023','asd123',1,1),
('2024','sdf234',2,2),
('2014','dfg345',2,1),
('2024','fgh456',1,2),
('2010','asd124',2,1),
('2015','sdf235',1,1),
('2015','dfg346',2,1),
('2022','fgh457',1,2),
('2015','fgh467',2,2),
('2024','fsa234',2,1);

 /*AÑADIR LLAVES FORANEAS*/
ALTER  TABLE vehiculos ADD Foreign Key  (id_color) REFERENCES colores (id);
ALTER TABLE vehiculos ADD Foreign Key (id_tipo) REFERENCES tipo_vehiculo (id);

ALTER TABLE tipo_vehiculo  ADD Foreign Key (id_marca) REFERENCES marcas (id);

/*CONSULTAS*/

SELECT vehiculos.modelo, vehiculos.placa, colores.color,tipo_vehiculo.tipo 
FROM vehiculos 
    INNER JOIN colores ON 
        vehiculos.id_color = colores.id
    INNER JOIN tipo_vehiculo ON
        vehiculos.id_tipo = tipo_vehiculo.id;
 