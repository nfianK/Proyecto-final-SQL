create schema Spinetta;
use Spinetta; 

#Entidad Bandas
create table Banda(
banda_id int primary key auto_increment, 
nombre varchar(35) not null,
ano_creacion int not null,
ano_activo int not null,
cant_albumes int not null
);

#Entidad Integrantes
create table Integrante(
integrante_id int primary key auto_increment,
nombre varchar(35) not null,
fecha_nac date not null,
vive boolean not null
);

create table Rol (
integrante_rol_id int primary key auto_increment,
integrante_id int not null ,
banda_id int not null ,
rol varchar(20) not null,
foreign key (integrante_id) references Integrante(integrante_id),
foreign key (banda_id) references Banda(banda_id)
);

#Entidad Productor
create table Productor(
productor_id int primary key not null,
nombre varchar(30) not null,
nacimiento date 
);

create table album_productor (
album_productor_id int primary key auto_increment,
album_id int not null,
productor_id int 
);

#Entidad Albumes
create table Album(
album_id int primary key auto_increment,
banda_id int,
nombre varchar(35) not null,
fecha_lanza int not null,
duracion time not null,
foreign key (banda_id) references Banda(banda_id)
);

#Entidad Canciones
create table Cancion(
cancion_id int primary key auto_increment,
album_id int,
nombre varchar(45) not null,
duracion time not null,
foreign key (album_id) references Album(album_id)
);

#Entidad genero
create table Genero(
genero_id int primary key auto_increment,
genero varchar(20)
);

create table genero_cancion (
genero_cancion_id int primary key auto_increment,
cancion_id int,
genero_id int,
foreign key (cancion_id) references Cancion(cancion_id),
foreign key (genero_id) references Genero(genero_id)
);

create table genero_album (
genero_cancion_id int primary key auto_increment,
album_id int,
genero_id int,
foreign key (album_id) references Album(album_id),
foreign key (genero_id) references Genero(genero_id)
);

