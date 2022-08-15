create database PelosPerros

create table dueno(
dni int not null,
nombre varchar(100) not null,
apellido varchar(100) not null,
telefono int,
direccion varchar(150),
constraint pk_ct  primary key(dni)
 )
insert into dueno value(24457890,'Marcos','Castro',3512458598,'Celestino Vidal 248')
insert into dueno value(12768456,'Martina','Martinez',3517544569,'Cochabamba 1678')
insert into dueno value(36245987,'Gaton','Gonzalez',3513788755,'Duarte Quiroz 78')


 create table perro(
 id_perro int not null,
 nombre_p Varchar(150)
 fecha_nac datetime,
 sexo varchar(100) not null,
 dni_dueno int not null ,
 constraint pk_cp primary key(id_perro),
 constraint fk_fd foreign key (dni_dueno) references dueno(dni)
 )

 insert into perro value(19,'Muchi',2021/02/19,'hembra',24457890)
 insert into perro value(45,'Gaucho',2020/05/30,'macho',12768456)
 insert into perro value(39,'Orion',2018/08/31,'macho',36245987)

 
 create table  historial(
 id_historial int not null,
 fecha date,
 perro int not null,
 descripcion varchar(200) not null,
 monto int,
 constraint pk_ch primary key(id_historial),
 constraint fk_fh foreign key (perro) references perro(id_perro)
 )
 
 insert into historial value(01,2020/07/03,19,'corte de uñas',500)
 insert into historial value(02,2021/10/02,39,'baño',2500)
insert into historial value(03,2021/12/29,39,'baño y corte de uñas',3000)


//Actividad 4//
update perro
set fecha_nac = '28/05/2020'
where  id_perro= 45
