
CREATE DATABASE Reclamos;
-- CREATE SCHEMA  Reclamos;
USE Reclamos;

CREATE TABLE TipoMotivo(
    ID_Tipo_M int ,
    Tipo_motiv VARCHAR(100) ,
    PRIMARY KEY(ID_Tipo_M));

CREATE TABLE NombresClientes(
    documento int ,
    Apellido VARCHAR (100),
    Nombre VARCHAR(100) ,
    PRIMARY KEY(documento));
    
   CREATE TABLE Calles(
    ID_Calle int ,
    Calle VARCHAR (100),
    PRIMARY KEY(ID_Calle));
    
CREATE TABLE Listareclamos(
    ID_Motivo int,
    Motivo_Reclamo VARCHAR (100),
    Costo DECIMAL(18,2) , 
    ID_Tipo_M int,
    PRIMARY KEY(ID_Motivo),
    FOREIGN KEY(ID_Tipo_M) REFERENCES TipoMotivo (ID_Tipo_M));
  
      
CREATE TABLE Reclamos(
    ID_Motivo int,
    Documento int,
    ID_Calle int , 
    Altura int,
    Fecha_Alta datetime,
    Reiteracion int,
    PRIMARY KEY(Altura, Documento, ID_Calle),
    FOREIGN KEY(ID_Motivo) REFERENCES Listareclamos (ID_Motivo),
   FOREIGN KEY(documento) REFERENCES NombresClientes (documento), 
   FOREIGN KEY(ID_Calle) REFERENCES Calles (ID_Calle));