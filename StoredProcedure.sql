use spinetta;

delimiter #

create procedure Ordenar (IN ordenar_por varchar(15), IN asendental varchar(15)) -- Pedido de datos string para su ordenamiento
begin
	-- Preparacion de sentencia select, a través de concatenacion 
	set @orden = concat('order by ', ordenar_por, ' ', asendental);
    set @sentencia_select = concat('select * from cancion ', @orden);

	-- Execucion de la sentencia select
    prepare ejecucion from @sentencia_select;
    execute ejecucion;
    deallocate prepare ejecucion;

end#
 
 
 create procedure Delete_integrante(IN IDintegrante int) -- Pedido de el número de integrante para su eliminación 
 begin
	-- Se concatena la parte de la sentencia delete from y el número de integrante
	set @sentencia_delete = concat('delete from integrante where integrante_id = ', IDintegrante);
    
    -- Preparación y ejecución de la sentencia delete
    prepare ejecucion from @sentencia_delete;
    execute ejecucion;
    deallocate prepare ejecucion;
 end#
 
 
 delimiter ;
