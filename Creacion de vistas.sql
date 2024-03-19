use Spinetta;

#Creación de la view donde son las canciones como solista de Luis Alberto Spinetta
create view Canciones_Luis as select cancion_id, nombre, duracion from cancion where album_id in (select album_id from Album where banda_id is null) order by duracion;

#Creación de la view donde podes ver todas las canciones relacionadas con sus bandas correspondientes y su duración
create view Cancion_banda as select cancion.nombre as cancion , banda.nombre as banda, cancion.duracion  from cancion left join album On cancion.album_id = album.album_id left join banda on album.banda_id = banda.banda_id where banda.nombre is not null;

#Creación de la view donde son los albumes producidos por Spinetta
create view ProducidoxSpinetta as select count(album_productor_id) from album_productor where productor_id = (select productor_id from productor where nombre like "%Spinetta%");

#Creación de la view donde te trae todas las canciones que corresponden al genero alternativo
create view Canciones_alternativo as select cancion.nombre as Cancion, genero.genero as Genero, album.nombre as Album from genero left join genero_cancion on genero.genero_id = genero_cancion.genero_id left join cancion on genero_cancion.cancion_id = cancion.cancion_id left join album on cancion.album_id = album.album_id where genero.genero_id = (select genero_id from genero where genero like '%alter%') order by Album;

#Creación de la view donde te trae todos los guitarristas que estuvieron junto a Spinetta
create view Guitarristas as select integrante.integrante_id, integrante.nombre, banda.nombre as banda from integrante left join rol on integrante.integrante_id = rol.integrante_id left join banda on rol.banda_id = banda.banda_id where integrante.integrante_id != (select integrante_id from integrante where nombre like '%Spinetta%') and rol.rol like 'guitarra';

select * from guitarristas;