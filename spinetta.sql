create schema Spinetta;
use Spinetta; 

#Entidad Bandas
create table Banda(
banda_id int primary key auto_increment, 
nombre varchar(20) not null,
ano_creacion int not null,
ano_activo int not null,
cant_albumes int not null
);

#Entidad Integrantes
create table Integrante(
integrante_id int primary key auto_increment,
nombre varchar(20) not null,
fecha_nac date not null,
vive varchar(2) not null
);

create table Rol (
integrante_rol_id int primary key auto_increment,
integrante_id int not null ,
banda_id int not null ,
rol varchar(20) not null,
foreign key (integrante_id) references Integrantes(integrante_id),
foreign key (banda_id) references Bandas(banda_id)
);

#Entidad Disqueras
create table Ubicacion (
ubicacion_id int primary key auto_increment,
estado_provincia varchar(20),
pais varchar(20)
);

create table Disquera(
disquera_id int primary key auto_increment,
nombre varchar(20) not null,
ubicacion_id int not null,
fecha_crea date not null,
anos_activo int not null,
foreign key (estado_pronvincia_id) references estado_pronvincia_id(estado_pronvincia_id)
);

#Entidad Albumes
create table Album(
album_id int primary key auto_increment,
banda_id int not null,
disquera_id int not null,
nombre varchar(20) not null,
fecha_lanza date not null,
duracion time not null,
foreign key (banda_id) references Bandas(banda_id),
foreign key (disquera_id) references Disqueras(disquera_id)
);

#Entidad Canciones
create table Cancion(
cancion_id int primary key auto_increment,
album_id int,
nombre varchar(20) not null,
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
