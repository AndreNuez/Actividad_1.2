CREATE DATABASE Michi_Pizzeria_1a1
GO

USE Michi_Pizzeria_1a1
GO

--Relación 1 a 1
--Un empleado tiene un único contrato, cada contrato tiene un único empleado.

CREATE TABLE Empleados (
    Legajo smallint not null primary key identity(1000,1),
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    DNI int not null unique,
    IDSucursal smallint not null
)
GO

CREATE TABLE Contratos(
    LegajoEmpleado smallint not null check (LegajoEmpleado >= 1000),
    FechaFirma date not null check (FechaFirma <= getdate()),

    primary key(LegajoEmpleado),
    foreign key (LegajoEmpleado) references Empleados(Legajo)
)
GO