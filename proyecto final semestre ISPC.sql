create database pelu_canina;
use pelu_canina;

-- creacion tabla duenio
create table Duenio(
DNI bigint,
Nombre varchar(80),
Apellido varchar(80),
Telefono bigint,
Direccion varchar(150),
constraint pk_cd primary key(DNI)
);

insert into Duenio values(28957346, "Juan", "Perez", 4789689, "Belgrano 101");
insert into Duenio values(23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"); 
insert into Duenio values(35590318, "Lujan", "Rodriguez", 47552355, "San Martin 2811");

create table Perro(
ID_perro int,
Nombre varchar(50),
Fecha_nac date,
sexo varchar(10),
DNI_duenio bigint,
constraint pk_cp primary key(ID_perro),
constraint fk_fc1 foreign key(DNI_duenio) references Duenio(DNI)
);

Insert into Perro values(13, "Puppy", 12/12/2012 , "Macho", 28957346);
Insert into Perro values(14, "Fido", 15/10/2015 , "Macho", 23546987);
insert into Perro values(15, "Tom", 25/9/2020, "Macho",35590318);

create table Historial(
ID_historial bigint,
fecha date,
perro int,
Descripcion varchar(600),
Monto float,
constraint pk_ch primary key(ID_historial),
constraint fk_fc2 foreign key(Perro) references Perro(ID_perro)
);

Insert into Historial values(8520, 19/12/2019 , 13,"internacion", 7510.00);
Insert into Historial values(8755, 25/04/2022 , 14, "Internacion + medicamentos", 8923.00);
Insert into Historial values(8626, 05/12/2021 , 15, "vacunas", 2259.00);

select * from Duenio;
update Duenio
set  Direccion = "Libertad 123"
where DNI= 35590318