--ddl_v2 db_parcial1

CREATE TABLE user_type (
    id_ut INTEGER PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE ciudad (
    ciudad_id INTEGER PRIMARY KEY,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(20)
);

CREATE TABLE usuario (
    usuario_id INTEGER PRIMARY KEY,
    user_nombre VARCHAR(100),
    user_apellido VARCHAR(100),
    type_usuario INTEGER,
    condicion_especial VARCHAR(100),
    ciudad_id_fu INTEGER,
    FOREIGN KEY (ciudad_id_fu) REFERENCES ciudad(ciudad_id),
    FOREIGN KEY (type_usuario) REFERENCES user_type(id_ut)
);

CREATE TABLE empleado (
    empleado_id INTEGER PRIMARY KEY,
    usuario_id_fe INTEGER,
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    FOREIGN KEY (usuario_id_fe) REFERENCES usuario(usuario_id)
);

CREATE TABLE servicio (
    servicio_id INTEGER PRIMARY KEY,
    nombre_servicio VARCHAR(100),
    descripcion_servicio VARCHAR(800),
    estado_servicio VARCHAR(50)
);

CREATE TABLE turno (
    usuario_id_ft INTEGER,
    servicio_id_ft INTEGER,
    empleado_id_ft INTEGER,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(50),
    PRIMARY KEY (usuario_id_ft, servicio_id_ft, empleado_id_ft),
    FOREIGN KEY (usuario_id_ft) REFERENCES usuario(usuario_id),
    FOREIGN KEY (servicio_id_ft) REFERENCES servicio(servicio_id),
    FOREIGN KEY (empleado_id_ft) REFERENCES empleado(empleado_id)
);

CREATE TABLE medio (
    medio_id INTEGER PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE notificacion (
    notificacion_id INTEGER PRIMARY KEY,
    usuario_id_fn INTEGER,
    medio_id_fn INTEGER,
    mensaje VARCHAR(900),
    fecha_envio TIMESTAMP,
    estado VARCHAR(50),
    FOREIGN KEY (usuario_id_fn) REFERENCES usuario(usuario_id),
    FOREIGN KEY (medio_id_fn) REFERENCES medio(medio_id)
);
