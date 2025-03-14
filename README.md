📚 Base de Datos de Escuela Técnica - PostgreSQL<br><br>


Este repositorio contiene el diseño y la implementación de una base de datos en PostgreSQL para una escuela técnica. La base de datos modela la estructura académica de la institución, incluyendo cursos, profesores, materias, estudiantes y notas.<br><br>

🏫 Estructura de la Base de Datos<br>
La base de datos sigue las siguientes reglas de negocio:<br>

Cursos y Materias<br>

Cada curso tiene varias materias.<br>
Cada materia pertenece a un solo curso.<br><br>

Cursos y Estudiantes<br>
Un curso tiene varios estudiantes.<br>
Cada estudiante pertenece a un solo curso.<br><br>

Profesores y Materias<br>
Cada profesor solo dicta una materia.<br>
Cada materia es dictada por un solo profesor.<br><br>

Estudiantes y Notas<br>
Un estudiante puede tener varias notas en una misma materia.<br>
Cada nota está asociada a un estudiante y una materia.<br><br>

📂 Estructura del Proyecto<br>
schema.sql → Archivo con la estructura de las tablas y relaciones.<br>
insert_data.sql → Archivo con datos de prueba para poblar la base de datos.<br>
queries.sql → Ejemplos de consultas SQL para interactuar con los datos.<br><br>

🛠 Tecnologías Utilizadas<br>
PostgreSQL como motor de base de datos.<br>
SQL para la creación de tablas y consultas.<br>

