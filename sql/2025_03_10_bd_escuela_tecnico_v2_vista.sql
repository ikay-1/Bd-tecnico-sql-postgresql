CREATE VIEW "Francisco Franco".lista_estudiantes_cursos
 AS
--listado de alumnos y su curso
select	c.cursos_nombre as curso,
		estudiantes_documento as documento,
		UPPER(estudiantes_nombre) as estudiante,
		estudiantes_edad,
		case 
			when estudiantes_edad < 19 then 'TEMPRANO'
			when estudiantes_edad < 21 then 'NORMAL'
			else upper('DEMORADO')
		end as clasificacion
from	"Francisco Franco".estudiantes as e
left join "Francisco Franco".cursos as c
	on e.cursos_id = c.cursos_id	
order by c.cursos_nombre, estudiantes_nombre;

ALTER TABLE "Francisco Franco".lista_estudiantes_cursos
    OWNER TO "Comfe_owner";
	

CREATE VIEW "Francisco Franco".lista_materias_sin_nota
 AS
select 	c.cursos_nombre as curso,
		m.materias_id as id_materia,
		m.materias_nombre as materia
from "Francisco Franco".materias as m
left join "Francisco Franco".notas as n
	on m.materias_id = n.materias_id
left join "Francisco Franco".cursos as c
	on m.cursos_id = c.cursos_id
where n.materias_id is null;

ALTER TABLE "Francisco Franco".lista_materias_sin_nota
    OWNER TO "Comfe_owner";