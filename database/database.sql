CREATE DATABASE tarea1;

\l

\c tarea1;

CREATE TABLE Estudiante (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    apellido VARCHAR(40),
    cedula VARCHAR(11),
    cod_provincia VARCHAR(10)
);

\dt

CREATE TABLE provincia (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    cod_provincia VARCHAR(10)
);


INSERT INTO estudiante (name, apellido, cedula, cod_provincia)
    VALUES ('Alejandra', 'Benitez','1-1123-1123', 'CR-1');

    INSERT INTO provincia (name, cod_provincia)
    VALUES ('Cartago', 'CR-4');

select * from provincia;

alter table estudiante add constraint FK_estudiante_cod_provincia foreign key ()