--dml_v2 db_parcial2

INSERT INTO user_type (id_ut, nombre) VALUES
(1, 'Cliente'),
(2, 'Empleado');

INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Bogota', '110111'),
(2, 'Medellin', '050021'),
(3, 'Cali', '760001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680001'),
(7, 'Pereira', '660001'),
(8, 'Manizales', '170001'),
(9, 'Santa Marta', '470001'),
(10, 'Cucuta', '540001');

INSERT INTO usuario (usuario_id, user_nombre, user_apellido, type_usuario, condicion_especial, ciudad_id_fu) VALUES
(1, 'Carlos', 'Lopez', 2, 'Ninguna', 1),
(2, 'Maria', 'Gomez', 2, 'Ninguna', 2),
(3, 'Luis', 'Torres', 2, 'Ninguna', 3),
(4, 'Ana', 'Martinez', 2, 'Ninguna', 4),
(5, 'Jorge', 'Rojas', 2, 'Ninguna', 5),
(6, 'Diana', 'Sanchez', 2, 'Ninguna', 6),
(7, 'Andres', 'Perez', 2, 'Ninguna', 7),
(8, 'Sofia', 'Castro', 2, 'Ninguna', 8),
(9, 'Camilo', 'Ramirez', 2, 'Ninguna', 9),
(10, 'Paola', 'Jimenez', 2, 'Ninguna', 10),
(11, 'Felipe', 'Rey', 1, 'Cliente frecuente', 1),
(12, 'Lucia', 'Mejia', 1, 'Cliente premium', 3),
(13, 'Ricardo', 'Moreno', 1, 'Cliente nuevo', 5),
(14, 'Laura', 'Diaz', 1, 'Cliente frecuente', 7),
(15, 'Tatiana', 'Hernandez', 1, 'Cliente eventual', 9);

INSERT INTO empleado (empleado_id, usuario_id_fe, cargo, departamento) VALUES
(1, 1, 'Mensajero', 'Logistica'),
(2, 2, 'Conductor', 'Distribucion'),
(3, 3, 'Operador de bodega', 'Almacenamiento'),
(4, 4, 'Asesor', 'Atencion al cliente'),
(5, 5, 'Analista', 'Consultoria'),
(6, 6, 'Coordinador', 'Recoleccion'),
(7, 7, 'Supervisor', 'Despacho'),
(8, 8, 'Gestor', 'Devoluciones'),
(9, 9, 'Tecnico', 'Rastreo'),
(10, 10, 'Encargado', 'Embalaje');

INSERT INTO servicio (servicio_id, nombre_servicio, descripcion_servicio, estado_servicio) VALUES
(1, 'Despacho de Paquetes', 'Envio nacional e internacional de paquetes', 'Activo'),
(2, 'Entrega Express', 'Entrega rapida en el mismo dia', 'Activo'),
(3, 'Recepcion de Paquetes', 'Recepcion y registro de articulos entrantes', 'Activo'),
(4, 'Rastreo y Seguimiento', 'Consulta en tiempo real de los envios', 'Activo'),
(5, 'Atencion al Cliente', 'Atencion personalizada y reclamos', 'Activo'),
(6, 'Consultoria Logistica', 'Asesoria en optimizacion de procesos de transporte', 'Activo'),
(7, 'Embalaje y Etiquetado', 'Empaque profesional de productos', 'Activo'),
(8, 'Recoleccion a Domicilio', 'Recoleccion de paquetes en la direccion del cliente', 'Activo'),
(9, 'Almacenamiento Temporal', 'Bodega temporal de articulos antes de despacho', 'Activo'),
(10, 'Devolucion Segura', 'Gestion de devoluciones de paquetes', 'Activo');

INSERT INTO medio (medio_id, nombre) VALUES
(1, 'Correo Electronico'),
(2, 'SMS'),
(3, 'WhatsApp');

INSERT INTO notificacion (notificacion_id, usuario_id_fn, medio_id_fn, mensaje, fecha_envio, estado) VALUES
(1, 11, 1, 'Su paquete ha sido despachado desde la sede central.', '2025-10-16 08:30:00', 'Enviado'),
(2, 12, 2, 'Su paquete ha sido entregado exitosamente.', '2025-10-16 14:45:00', 'Enviado'),
(3, 13, 3, 'Su envio presenta retraso por condiciones climaticas.', '2025-10-17 10:15:00', 'Pendiente'),
(4, 14, 1, 'El mensajero ha recogido su paquete en el domicilio.', '2025-10-17 12:00:00', 'Enviado'),
(5, 15, 2, 'Su paquete ha sido recibido en bodega.', '2025-10-18 09:00:00', 'Enviado');

INSERT INTO turno (usuario_id_ft, servicio_id_ft, empleado_id_ft, fecha, hora_inicio, hora_fin, estado) VALUES
(11, 1, 1, '2025-10-16', '06:00:00', '14:00:00', 'Finalizado'),
(12, 2, 2, '2025-10-16', '14:00:00', '22:00:00', 'En curso'),
(13, 3, 3, '2025-10-17', '08:00:00', '16:00:00', 'Pendiente'),
(14, 4, 4, '2025-10-17', '07:00:00', '15:00:00', 'Finalizado'),
(15, 5, 5, '2025-10-18', '09:00:00', '17:00:00', 'En curso'),
(11, 6, 6, '2025-10-19', '10:00:00', '18:00:00', 'Pendiente'),
(12, 7, 7, '2025-10-19', '06:00:00', '14:00:00', 'Finalizado'),
(13, 8, 8, '2025-10-20', '12:00:00', '20:00:00', 'Pendiente'),
(14, 9, 9, '2025-10-20', '08:00:00', '16:00:00', 'Finalizado'),
(15, 10, 10, '2025-10-21', '07:00:00', '15:00:00', 'En curso');
