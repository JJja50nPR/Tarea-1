CREATE DATABASE tarea1;

\l   --Listar Base de datos

\c tarea1;  -- Conectar Base de datos creada

CREATE TABLE Estudiante (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    apellido VARCHAR(40),
    cedula VARCHAR(11),
    cod_provincia VARCHAR(10)
);

\dt  --Listar las tablas

CREATE TABLE provincia (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    cod_provincia VARCHAR(10)
);


INSERT INTO estudiante (name, apellido, cedula, cod_provincia)
    VALUES ('Alejandra', 'Benitez','1-1123-1123', 'CR-1'),
           ('Sofia', 'Vergara','1-1124-3423', 'CR-2');

    INSERT INTO provincia (name, cod_provincia)
    VALUES ('Cartago', 'CR-4');

select * from provincia;

alter table estudiante add constraint FK_estudiante_cod_provincia foreign key ()