Use Spinetta;

delimiter #
create function CancionesxBanda(IDbanda int)
returns int 
deterministic 
begin
	declare cant int;
    -- Pido la cantidad de canciones que hizo una banda y lo meto en la variable cant
    select count(cancion_id) into cant 
    -- Ingreso 3 tablas (cancion, album y banda)
    from cancion left join album On cancion.album_id = album.album_id left join banda on album.banda_id = banda.banda_id 
    -- Filtro por el id de la banda que quiero
    where banda.banda_id = IDbanda;
    
	return cant;

end #

create function enalbum (nombre_cancion char(45))
returns char(45)
reads sql data
begin
	declare nombre_album char(45);
    -- A través del nombre de una cancion, logro dar el nombre del album a la que pertenece  
    select album.nombre into nombre_album 
    -- Uno las dos tablas (cancion y album) 
    from cancion left join album on cancion.album_id = album.album_id 
    -- Filtro por el nombre de la cancion para poder sacar el nombre del album
    where cancion.nombre like nombre_cancion;
    return nombre_album;
    
    
    
