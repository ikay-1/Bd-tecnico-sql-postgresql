-----------------------------------------
--crecacion de procedimiento: insertar nota de una materia a un estudiante
-----------------------------------------	
CREATE OR REPLACE PROCEDURE "Francisco Franco".insertar_nota(IN materia integer, IN estudiante integer, IN nota integer)
    LANGUAGE 'plpgsql'
    
AS $BODY$
begin
	insert into "Francisco Franco".notas(materias_id,estudiantes_id,notas_puntaje) 
	values (materia,estudiante,nota);

	raise notice 'procedimiento ejecutado a las % ',now();
end;
$BODY$;

-- insertar notas para un estudiante y su materia
SET search_path TO public
ALTER ROLE current_user SET search_path TO public;
call "Francisco Franco".insertar_nota(29,23,1);


