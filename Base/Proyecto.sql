create database proyecto;

/*
drop table edificio;
drop table equipos;
drop table laboratorios;
drop table mantenimiento_logico;
drop table mantenimiento_preventivo;
drop table usuarios;
*/

use proyecto;

create table edificio
(
id_departamento int identity (1,1) unique,
nombre_departamento varchar(100) primary key
);

create table usuarios(
id_usuario int identity (1,1) unique,
nombre varchar(100) primary key,
direccion varchar(200),
telefono char(9),
cargo varchar(50) check(cargo in ('jefe','empleado','supervisor','administrador')),
nombre_departamento varchar(100),
usuario varchar(100),
pass varchar(100),
foto varchar(200),
constraint nombre_departamento_1 foreign key (nombre_departamento) references edificio on delete cascade
);

create table laboratorios
(
id_laboratorio int identity (1,1) unique,
nombre_laboratorio varchar(100) primary key,
nombre_departamento varchar(100),
constraint nombre_departamento_2 foreign key (nombre_departamento) references edificio on delete cascade
);

create table equipos
(
id_equipo int identity (1,1) unique,
nombre_equipo varchar(100) primary key,
tipo_equipo varchar(100),
fabricante varchar(100),
nombre_departamento varchar(100),
nombre_laboratorio varchar(100),
espefificacion_tecnica varchar(100),
observaciones varchar(300),
estado varchar(50) check (estado in('bueno', 'malo', 'reparacion')),
constraint nombre_departamento_3 foreign key (nombre_departamento) references edificio on delete cascade,
constraint nombre_laboratorio_1 foreign key (nombre_laboratorio) references laboratorios
);

create table mantenimiento_logico
(
id_logico int identity (1,1) unique,
nombre_logico varchar(100) primary key,
descripcion_0 varchar(100)
);

create table mantenimiento_preventivo
(
id_preventivo int identity (1,1) unique,
nombre_preventivo varchar(100) primary key,
descripcion_0 varchar(100)
);

create table mantenimiento
(
id_mantenimiento int identity (1,1) unique,
nombre_departamento varchar(100),
nombre_laboratorio varchar(100),
nombre varchar(100),
nombre_equipo varchar(100),
nombre_logico varchar(100),
nombre_preventivo varchar(100),
tipo varchar(50) check ( tipo in('preventivo','logico')),
fecha date,
estado varchar(50) check (estado in ('abierto','completado','pendiente','Denegado')),
aprobacion varchar(50) check (aprobacion in('pendiente','denegado','aprobado')),
constraint nombre_departamento_4 foreign key (nombre_departamento) references edificio on delete cascade,
constraint nombre_laboratorio_2 foreign key (nombre_laboratorio) references laboratorios,
constraint nombre_2 foreign key (nombre) references usuarios,
constraint nombre_equipo_1 foreign key (nombre_equipo) references equipos,
constraint nombre_logico_1 foreign key (nombre_logico) references mantenimiento_logico,
constraint nombre_preventivo_1 foreign key (nombre_preventivo) references mantenimiento_preventivo
);

drop table mantenimiento
drop table mantenimiento_preventivo
drop table mantenimiento_logico
drop table equipos
drop table laboratorios
drop table usuarios
drop table edificio