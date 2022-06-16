CREATE DATABASE tarea1;

\l   --Listar Base de datos

\c tarea1;  -- Conectar Base de datos creada

CREATE TABLE provincia (
    cod_provincia VARCHAR(10) PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL
);

CREATE TABLE Estudiante (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    cedula VARCHAR(11) NOT NULL,
    cod_provincia VARCHAR(10),
    CONSTRAINT FK_provinciaEstudiante FOREIGN KEY (cod_provincia) REFERENCES provincia (cod_provincia)
);

\dt  --Listar las tablas




INSERT INTO estudiante (name, apellido, cedula, cod_provincia)
    VALUES ('Alejandra', 'Benitez','1-1123-1123', 'CR-1'),
            ('Henry', 'Segura','1-1125-1125', 'CR-2'),
            ('Jeffrey', 'Porras','1-5123-5123', 'CR-4'),
            ('Jeffrey', 'Esquivel','5-1123-1124', 'CR-1'),
            ('Sofia', 'Mendez','3-1123-1124', 'CR-1'),
            ('Catalina', 'Zuniga','6-1123-1124', 'CR-7'),
            ('Manuel', 'Trejos','2-1123-1124', 'CR-6'),
            ('Juliana', 'Mata','7-1123-9124', 'CR-1'),
            ('Juan', 'Perez','4-1123-1124', 'CR-3'),
           ('Jason', 'Palacios','3-1324-3423', 'CR-5');

    INSERT INTO provincia (name, cod_provincia)
    VALUES ('San Jose', 'CR-1'),('Alajuela', 'CR-2'),('Heredia', 'CR-3'),('Cartago', 'CR-4'),
    ('Guanacaste', 'CR-5'),('Puntarenas', 'CR-6'),('Limon', 'CR-7');
