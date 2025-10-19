Descripción
Este proyecto consiste en la creación y despliegue de una base de datos en Postgres, base la cual incluye la definición de su estructura mediante sentencias DDL (Data Definition Language) y la inserción de datos mediante sentencias DML (Data Manipulation Language).

El entorno se configuró utilizando contenedores Docker para PostgreSQL y pgAdmin.

1. SCRIPTS SQL

	DDL.sql → contiene las sentencias CREATE TABLE, PRIMARY KEY, FOREIGN KEY, entre otros. Es el que define la estructura de la base de datos.

	DML.sql → contiene las sentencias INSERT INTO, con los registros de cada tabla.

2. DESPLIEGUE DE CONTENEDORES

	Primer comando (despliegue contenedor Docker):
	Docker run --name servilimar -e "POSTGRES_USER=ulimar" -e "POSTGRES_PASSWORD=ex4men_db" -p 5432:5432 postgres:14
	
	Segundo comando (despliegue contenedor pgAdmin):
	Docker run -p 5050:80 --link postgres_examendb:postgres_examendb -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d 	dpage/pgadmin4

3. CONEXION A LA BASE DE DATOS DESDE PGADMIN

	Una vez tenga los contenedores levantados, acceda a la siguiente dirección:
	http://localhost:5050

	Inicie sesión con las siguientes credenciales:
	email: usuario@servilimar.com
	password: limar#123

Dentro de pgAdmin, cree la base de datos con hostname=servilimar, user=ulimar y password=ex4men_db. Luego ejecute los scripts en el siguiente orden:

-> DDL.sql para crear la estructura de las tablas.

-> DML.sql para insertar los registros.

AUTOR

Daniel Andres Micolta Gongora - C.E. 2422033-3743
Curso: Bases de Datos
Institución: Universidad del Valle
	