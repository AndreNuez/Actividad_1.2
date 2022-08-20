CREATE DATABASE Michi_Pizzeria_NaN
GO

USE Michi_Pizzeria_NaN
GO

--Relación N a N
--A muchos empleados les corresponden varias tareas y a varias tareas les corresponden varios empleados

CREATE TABLE Empleados (
    Legajo smallint not null primary key identity(1000,1),
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    DNI int not null unique,
    IDSucursal smallint not null
)
GO

CREATE TABLE Tareas(
    ID smallint not null primary key,
    Nombre_Tarea varchar(30) not null unique
)
GO

CREATE TABLE Tareas_por_Empleado(
    LegajoEmpleado smallint not null,
    IDTarea smallint not null,

    primary key (LegajoEmpleado,IDTarea),
    foreign key (LegajoEmpleado) references Empleados(Legajo),
    foreign key (IDTarea) references Tareas(ID),
)
GO