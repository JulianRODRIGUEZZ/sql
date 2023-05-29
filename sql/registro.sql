create database prueba;
use prueba;

create table registros(
	id int not null auto_increment,
    cc numeric (15) not null,
    direccion varchar(50) not null,
    telefono numeric (10) not null,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    ciudad varchar (20) not null,
	Email varchar (50) not null,
    primary key (id)
);


create table usuario(
	id int not null auto_increment,
    nombre varchar (20),
    apellido varchar (20),
    direccion varchar(50),
    cc numeric (20),
    telefono numeric (20),
    create_by int not null,
    primary key (id),
    foreign key(create_by) references registros(id)
);


insert into registros (cc, nombre, apellido, direccion, telefono, ciudad, Email)
values
	(13245, 'diego', 'norrea', 'cll15-7', 4326474, 'yopal', 'lefos@gmail.com'),
    (13245, 'monica', 'galindo', 'cll176-20', 6356464, 'yopal', 'ross@gmail.com' ),
	(13245, 'elver', 'gonzales', 'cll45-6', 3574547, 'yopal', 'esmegsg@gmail.com')
;

select * from usuario;

select r.id, r.nombre, r.apellido, r.direccion, r.cc, r.telefono from registros r left join usuario u on r.id = u.id;
