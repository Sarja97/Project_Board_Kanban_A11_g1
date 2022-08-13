create database veterinaria 

use veterinaria

create table dueno(
DNI int auto_increment,
nombre_due varchar(50),
apellido varchar(50),
telefono bigint,
direccion varchar(50),
primary key(DNI)
);

insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (35076543, "Marcelo", "Garcia", 3542887983, "Arrebalo 451");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (25897654, "Luna", "Pereyra", 3542765477, "Japon 642");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (40666741, "Agustina", "Alvarez", 3542234698, "Gral Paz 200");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (42065412, "Leandro", "Reversat", 3543887926, "Suqia 340");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (29765432, "Emilio", "Rodriguez", 354233289, "Oro 222");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (17433211, "Ines", "Mercado", 354219823, "Fleming 376");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (22876453, "Eduardo", "Arias", 3782456732, "Cabanillas 290");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (20123453, "Susana", "Diaz", 37824298, "Las Arrias 901");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (38976512, "Emilse", "Gomez", 378454467, "Embalse 290");
insert into dueno (DNI, nombre_due, apellido, telefono, direccion) values (31567892, "Lizandro", "Casalleti", 378212732, "Catamarca 311");

select * from dueno;



create table perro(
id_perro int auto_increment,
nombre varchar(50),
fecha_nac datetime,
sexo varchar(10),
DNI_dueno int,
primary key (id_perro),
foreign key  (DNI_dueno) references dueno(DNI)
);

insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (1, "Franky", "2019-03-17", "Macho", 35076543);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (2, "Riki", "2010-05-29", "Macho", 25897654);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (3, "Reina", "2015-03-9", "Hembra", 40666741);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (4, "Tibo", "2016-11-3", "Macho", 42065412);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (5, "Lara", "2014-07-7", "Hembra", 29765432);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (6, "Sari", "2018-09-26", "Hembra", 17433211);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (7, "Coco", "2017-01-11", "Macho", 22876453);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (8, "Blanca", "2019-12-9", "Hembra", 20123453);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (9, "Cuchy", "2016-02-13", "Hembra", 38976512);
insert into perro (id_perro, nombre, fecha_nac, sexo, DNI_dueno) values (10, "Santo", "2020-03-23", "Macho", 31567892);

create table historial(
id_historial int auto_increment,
fecha datetime,
perro int,
descripcion varchar(80),
monto int,
primary key (id_historial),
foreign key (perro) references perro(id_perro)
);


insert into historial (id_historial, fecha, perro, descripcion, monto) values (1, "2019-03-17", 2, "Castracion", 5000);
insert into historial (id_historial, fecha, perro, descripcion, monto) values (003, "2016-07-12", 5, "Castracion", 2000);
insert into historial (id_historial, fecha, perro, descripcion, monto) values (3, "2021-06-1", 9, "Operacion por quiste", 8000);
insert into historial (id_historial, fecha, perro, descripcion, monto) values (7, "2019-05-7", 7, "Pata quebrada", 7000);
insert into historial (id_historial, fecha, perro, descripcion, monto) values (9, "2022-02-19", 2, "Peluqueria", 1700);

# PUNTO 10
truncate historial;

# PUNTO 11
select distinct nombre_due, apellido
from dueno
join perro on perro.DNI_dueno = dueno.DNI
join historial on historial.perro = perro.id_perro
where perro.fecha_nac between "2018-01-01" and "2022-12-31" 
and historial.fecha < "2022-01-01";

# PUNTO 12
select * from perro
where 1 = 1 
and sexo = "Macho"
and fecha_nac between "2020-01-01" and "2022-12-31";

