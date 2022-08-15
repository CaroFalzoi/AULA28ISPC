Create database perros;
show databases;
use perros;
CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(60),
Fecha_nac date,
Sexo varchar (20),
dni_dueno int  not null,
Primary key(ID_Perro)
);

CREATE TABLE Dueno(
DNI int not null primary key,
Nombre varchar(50),
Apellido varchar(50),
Telefono int, 
Direccion varchar(75)
);

CREATE TABLE Historial(
ID_Historial int not null auto_increment primary key,
Fecha date,
Perro int not null , foreign key(Perro) references Perro(ID_Perro),
Descripcion varchar(150),
Monto int
);


INSERT INTO dueno(DNI,Nombre,Apellido,Telefono,Direccion) VALUES (16244788,'Jose','Del Rio',157580625,'Juan Luque 328');
INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_Dueno) VALUES ('koki','2020-05-14','Masculino',16244788);
UPDATE perro set Fecha_nac =  '2021-05-2' where ID_Perro = 1;
select * from Perro;
