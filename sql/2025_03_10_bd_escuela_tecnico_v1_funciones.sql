-----------------------------------------
--crecacion de funciones
-----------------------------------------	
-- funcuion que suma dos numeros
create or replace function "Francisco Franco".suma (num1 int, num2 int) returns int 
as
$$
select num1 + num2;
$$
language sql;

select "Francisco Franco".suma(1,2);

-- funcion devuelve numero de notas de una materia de un estudiante
create or replace function 
	"Francisco Franco".buscar_num_notas_est_y_mate(estudiante int, materia int) 
	returns int as
$$
declare
	cant_notas int;
begin
	cant_notas := (select count(*) 
					from "Francisco Franco".notas 
					where estudiantes_id = estudiante
					and materias_id = materia);
	return cant_notas;
end;
$$ language plpgsql;

select "Francisco Franco".buscar_num_notas_est_y_mate(1,1);

-- notas de cada materia de un estudiante
select 	c.cursos_nombre as curso,
		m.materias_nombre as materia, 
		e.estudiantes_nombre as estudiante,
		"Francisco Franco".buscar_num_notas_est_y_mate(1,m.materias_id) as cant_notas
from "Francisco Franco".materias as m
left join "Francisco Franco".cursos as c
	on m.cursos_id = c.cursos_id
left join "Francisco Franco".estudiantes as e
	on c.cursos_id = e.cursos_id
Where e.estudiantes_id = 1
order by m.materias_nombre;


-- funcion busca estudiantes por su nombre 
CREATE OR REPLACE FUNCTION 
	"Francisco Franco".busca_estudiantes(nombre_buscar VARCHAR) 
RETURNS TABLE(nombre VARCHAR, curso VARCHAR, materia VARCHAR, cant_notas INTEGER) AS
$$
BEGIN
    RETURN QUERY
    SELECT  e.estudiantes_nombre,
            c.cursos_nombre,
            m.materias_nombre,
            COUNT(*)::INTEGER  -- Conversión explícita a INTEGER
    FROM "Francisco Franco".notas AS n
    LEFT JOIN "Francisco Franco".estudiantes AS e
        ON n.estudiantes_id = e.estudiantes_id
    LEFT JOIN "Francisco Franco".materias AS m
        ON n.materias_id = m.materias_id
    LEFT JOIN "Francisco Franco".cursos AS c
        ON m.cursos_id = c.cursos_id
    WHERE UPPER(e.estudiantes_nombre) LIKE UPPER('%' || nombre_buscar || '%')
    GROUP BY e.estudiantes_nombre, m.materias_nombre, c.cursos_nombre
    ORDER BY e.estudiantes_nombre, m.materias_nombre;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM "Francisco Franco".busca_estudiantes('a');
