CREATE TABLE Cliente(
Id_Cliente integer primary key,
Nombre_Cliente varchar (30),
TipoCliente Varchar(15)
);

CREATE TABLE Abogado(
Doc_Abogado integer primary key,
Nombre_Abogado varchar(15),
Apellido_Abogado varchar(15),
Actividad varchar(10),
Email varchar (35),
Contraseņa varchar (35),
Ciudad Varchar (20),
Tipo_Doc Varchar (20)
);

CREATE TABLE Juez(
Doc_Juez integer primary key,
Nombre_Juez varchar (30)
);

Create Table ClienteAbogado(
Id_Cliente integer,
Doc_Abogado integer,
foreign key (Id_Cliente) references Cliente(Id_Cliente),
foreign key (Doc_Abogado) references Abogado(Doc_Abogado)
);

CREATE TABLE Procesos(
Id_Proceso integer primary key,
Nombre_Proceso varchar (20),
Ciudad varchar (20),
Nombre_Juzgado varchar (50),
Id_EntidadG integer,
Estado_Proceso varchar(1000), 
Razon_Social varchar(50),
Doc_Juez integer,
Doc_Abogado integer,
foreign key (Id_EntidadG) references EntidadGobierno(Id_EntidadG),
foreign key (Doc_Juez) references Juez(Doc_Juez),
foreign key (Doc_Abogado) references Abogado(Doc_Abogado)
);

CREATE TABLE EntidadGobierno(
Id_EntidadG integer primary key,
Nombre_Entidad varchar (30),
Direccion_Entidad varchar(30)
);


