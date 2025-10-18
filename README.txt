PASOS DE LA CREACION Y DESPLIEGUE DE LA BASE DE DATOS

1. Creación de los scripts SQL

- 1.1 Se desarrollan los scripts:

	DDL.sql → contiene las sentencias CREATE TABLE, ALTER TABLE, PRIMARY KEY, FOREIGN KEY, etc., que definen la estructura de la base de 	datos.

	DML.sql → contiene las sentencias INSERT INTO, con los registros iniciales de cada tabla.

2. Despliegue de contenedores en Docker
	
- 2.1 Comando para desplegar el contenedor de Postgres:

  	Docker run --name postgres_examendb -e "POSTGRES_USER=ulimar" -e "POSTGRES_PASSWORD=ex4men_db" -p 5432:5432 postgres:14


- 2.2 Comando para desplegar el contenedor de pgAdmin:

  	Docker run -p 5050:80 --link postgres_examendb:postgres_examendb -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4


3. Conexión a la bases de datos desde pgAdmin

- 3.1 Una vez levantados los contenedores, se accede a pgAdmin desde el navegador Google Chrome en la dirección: http://localhost:5050

- 3.2 Se inicia sesión con las credenciales configuradas:
	email: usuario@servilimar.com
	password: limar#123

4. Creación de la base de datos y ejecución de los scripts:

- 4.1 Una vez dentro de pgAdmin, se crea la bases de dándole click en "ADD NEW SERVER"
	
	4.1.1 En la pestaña "General", en la casilla name ira el nombre "serviciosulimar"

	4.1.2 En la pestaña "Connections", en la casilla Host name/addres ira "postgres_examendb"
		
		4.1.2.1 En la casilla Username ira "ulimar"
		4.1.2.2 En la casilla Password ira "ex4men_db"

- 4.2 Una vez creada la base de datos, ejecutara los scripts en este orden:

	Ejecutar DDL.sql para crear la estructura de las tablas.

	Ejecutar DML.sql para insertar los registros.

Tras la ejecución de los scripts, la base de datos quedara completamente funcional con todas las tablas creadas y los datos cargados.

AUTOR

Daniel Andres Micolta Gongora - C.E. 2422033-3743
Curso: Bases de Datos
Institución: Universidad del Valle
	