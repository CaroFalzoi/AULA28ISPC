create database TPBBDD
use TPBBDD

create table dueno(
DNI_d int,
Nombre_d varchar(50),
Apellido_d varchar(50),
Telefono_d int,
Direccion_d varchar(50)
constraint pk_dni primary key(DNI_d)
)
insert into dueno values (1,'Bruce','Dickinson',123456,'la paz 8844')
insert into dueno values (2,'Steve','Harris',234567,'Consitucion 5511')
insert into dueno values (3,'Janick','Gers',345678,'Lavalle 3321')
insert into dueno values (4,'Nicko','MCBrain',456789,'Cochabamba 123')
insert into dueno values (5,'Adrian','Smith',987654,'Cochabamba 2151')
insert into dueno values (6,'Dave','Murray',876543,'Edmonton 1956')
update dueno set Direccion_d ='Libertad 123' where DNI_d =1;
create table perro1(
ID_Perro int PRIMARY KEY,
Nombre_p varchar(50),
Fecha_nac_p datetime,
Sexo_p varchar(20),
DNI_p int ,
constraint fk_dn foreign key(DNI_p) references dueno(DNI_d)
)
set dateformat dmy;

insert into perro1 values (1,'Felipe','20-05-2020', 'Masculino',1)
insert into perro1 values (2,'Emilia','12/12/2015', 'Femenino',2)
insert into perro1 values (3,'Simona',22/11/2017, 'Femenino',3)
insert into perro1 values (4,'Borrachin',22/09/2015, 'Macho',4)
insert into perro1 values (5,'Doc',22/11/2011, 'Macho',5)
update  perro1 set Fecha_nac_p= '12/12/2015' where ID_Perro=2;
update  perro1 set Fecha_nac_p= '22/11/2017' where ID_Perro=3;
update  perro1 set Fecha_nac_p= '22/09/2015' where ID_Perro=4;
update  perro1 set Fecha_nac_p= '22/11/2011' where ID_Perro=5;

create table historial (
ID_Historial int,
Fecha date,
perro_id int,
descripcion varchar(100),
monto int,
constraint pk_idH primary key (ID_Historial),
constraint pk_perro foreign key (perro_id) references perro1 (ID_Perro)
)
insert into historial values (1,'22/11/2011', 5,'Tratamiento terminado',15000)
insert into historial values (2,'25/11/2011', 1,'Tratamiento terminado',25000)
insert into historial values (3,'22/09/1993', 3,'Tratamiento terminado',2000)


DELETE FROM historial where Fecha<'01/01/2000';


select * from  historial