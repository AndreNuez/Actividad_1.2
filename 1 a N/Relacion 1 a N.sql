CREATE DATABASE Michi_Pizzeria_1aN
GO

USE Michi_Pizzeria_1aN
GO

--Relacion 1 a N
--Una sucursal puede tener muchos empleados, pero un empleado puede pertenecer solo a una sucursal

CREATE TABLE Empleados (
    Legajo smallint not null primary key identity(1000,1),
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    DNI int not null unique,
    IDSucursal smallint not null
)
GO

CREATE TABLE Sucursales(
    ID smallint not null primary key,
    Direccion varchar(100) not null,
    Telefono varchar(20) not null,
    Mail varchar(100) not null unique
)
GO

ALTER TABLE Empleados 
ADD CONSTRAINT FK_IDSucursal foreign key(IDSucursal) references Sucursales(ID)
GO
 
