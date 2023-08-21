CREATE DATABASE Libro;

CREATE TABLE Libro(
ID int PRIMARY KEY IDENTITY(1,1),
Titulo nvarchar NOT NULL,
Autor nvarchar NOT NULL,
anio varchar NOT NULL
);