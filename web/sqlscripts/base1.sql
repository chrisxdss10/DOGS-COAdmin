drop database if exists doggos;
create database doggos;
use doggos;

drop table if exists DireccionUsuario;
create table DireccionUsuario(IdDireccion int(2) primary key not null,
Calle varchar(30) not null,
NumInt varchar(4) not null,
NumExt varchar(4) not null,
Cp varchar(5) not null,
Colonia varchar(30) not null,
Delegacion varchar(30) not null,
Estado varchar(30) not null
);

drop table if exists Usuario;
create table Usuario(IdUsuario int(3) primary key not null,
NombreUsuario varchar(30) not null,
Nombre varchar(20) not null,
Contraseña varchar(20) not null,
Correo varchar(30) not null,
Telefono varchar(20) ,
Descripcion blob,
Foto blob,
IdDireccion int(2) not null,
foreign key(IdDireccion) references DireccionUsuario (IdDireccion));

drop table if exists Publicacion;
create table Publicacion(IdPub int(3) primary key not null,
Comentarios blob,
Fecha datetime not null,
IdUsuario int(3) not null
);

drop table if exists DireccionCentro;
create table DireccionCentro(IdDireccion int(2) primary key not null,
Calle varchar(30) not null,
NumInt varchar(4) not null,
NumExt varchar(4) not null,
Cp varchar(5) not null,
Colonia varchar(30) not null,
Delegacion varchar(30) not null,
Estado varchar(30) not null
);


drop table if exists Centro;
create table Centro(IdCentro int(2) primary key not null,
NombreCentro varchar(30) not null,
Usuario varchar(30) not null,
Contraseña varchar(30) not null,
Descripcion blob not null,
Telefono varchar(20) not null,
Correo varchar(30) not null,
IdDireccion int(2) not null,
foreign key(IdDireccion) references DireccionCentro (IdDireccion));

drop table if exists Perro;
create table Perro(IdPerro int(3) primary key not null,
Nombre varchar(30) not null,
Peso float(5) not null,
Color varchar(10) not null,
Tamaño varchar(10) not null,
Rango_edad varchar(20) not null,
Descripcion blob not null,
IdCentro int(2) not null,
foreign key(IdCentro) references Centro(IdCentro)
);

drop table if exists Fotos;
create table Fotos(IdFoto int(3) primary key not null,
IdPerro int(3) not null,
Foto blob not null,
foreign key(IdPerro) references Perro (IdPerro)
);

drop table if exists RelUsPerro;
create table RelUsPerro(IdRelUsPerro int(3) primary key not null,
IdUsuario int(3) not null,
IdPerro int(3) not null,
foreign key(IdUsuario) references Usuario (IdUsuario),
foreign key(IdPerro) references Perro (IdPerro)
);

drop table if exists Administrador;
create table Administrador(IdAdministrador int(1) primary key not null,
Tipo varchar(20),
Clave varchar(32));
