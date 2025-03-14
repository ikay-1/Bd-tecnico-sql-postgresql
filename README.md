📚 Base de Datos de Escuela Técnica - PostgreSQL
Este repositorio contiene el diseño y la implementación de una base de datos en PostgreSQL para una escuela técnica. La base de datos modela la estructura académica de la institución, incluyendo cursos, profesores, materias, estudiantes y notas.
🏫 Estructura de la Base de Datos
La base de datos sigue las siguientes reglas de negocio:

Cursos y Materias

Cada curso tiene varias materias.
Cada materia pertenece a un solo curso.
Cursos y Estudiantes

Un curso tiene varios estudiantes.
Cada estudiante pertenece a un solo curso.
Profesores y Materias

Cada profesor solo dicta una materia.
Cada materia es dictada por un solo profesor.
Estudiantes y Notas

Un estudiante puede tener varias notas en una misma materia.
Cada nota está asociada a un estudiante y una materia.

📂 Estructura del Proyecto
schema.sql → Archivo con la estructura de las tablas y relaciones.
insert_data.sql → Archivo con datos de prueba para poblar la base de datos.
queries.sql → Ejemplos de consultas SQL para interactuar con los datos.
🛠 Tecnologías Utilizadas
PostgreSQL como motor de base de datos.
SQL para la creación de tablas y consultas.

