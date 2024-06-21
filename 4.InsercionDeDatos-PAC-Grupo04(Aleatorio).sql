/* Inserción de data */

INSERT INTO grupo04.CATEGORIAS (nombre_categoria, descripcion) VALUES
('cadena', 'cadenas de rodillos'),
('sprocket', 'sprockets para cadenas de rodillos'),
('candado', 'candado para cadenas de rodillos'),
('medio paso', 'medio paso para cadenas de rodillos'),
('acoplamientos', 'acoplamientos'),
('chumacera', 'chumaceras de fierro fundido');


INSERT INTO grupo04.MARCA (nombre_marca) VALUES
('vercelli'),
('wcc'),
('dbk'),
('fkd');


INSERT INTO grupo04.CLIENTE (
    documento_identidad, nombre, apellido, email, telefono, 
    usuario, contrasena, razon_social, ruc, direccion, 
    urbanizacion, distrito, departamento, pais
) VALUES
('46342718', 'Emmanuel', 'Ortiz', 'logistica@pinelscuscinetti.com', '989448682', 'eortiz', '1234secure', 'PINELS CUSCINETTI S.A.C.', '20547140096', 'Cal. Constantino Carvallo Nro. 311 Dpto. 101.', 'Santa Catalina', 'La Victoria', 'Lima', 'Peru'),
('44073516', 'Juliana', 'Galarza', 'mmmv.mecanica@gmail.com', '995886680', 'jgalarza', 'securePass987', 'METAL MECANICA MONTALVAN VERASTEGUI S.A.C.', '20566274052', 'Pj. los Olivos Mza. C Lote. 4-a A.H. Vicentelo Bajo', '', 'El Agustino', 'Lima', 'Peru'),
('10613528', 'Jose', 'Bringas', 'logistica@cycmontajes.com.pe', '54427980', 'jbringas', 'P@ssw0rd123', 'C & C MONTAJES E INSTALACIONES S.R.L.', '20453888674', 'Mza. C Lote. 1-A', 'La Estrella', 'Jose Luis Bustamante y Rivero', 'Arequipa', 'Peru'),
('43291304', 'Raquel Magdalena', 'Castillo Salcedo', 'rcastillos@avsa.com.pe', '966136759', 'rcastillo', 'Magd@lena456', 'CORPORACION AGRICOLA VIÑASOL S.A.C.', '20543521401', 'Cal. Olivas Escudero Fidel 1er Nro. 123', 'Pando 1ra Et.', 'San Miguel', 'Lima', 'Peru'),
('25760768', 'Julissa', 'Parreño', 'administracion@disegmaq.com', '965430049', 'jparreno', 'Juli$$a789', 'DISEGMAQ E.I.R.L.', '20508541911', 'José C Mariategui Nro. 1256 San Gabriel', '', 'Villa Maria del Triunfo', 'Lima', 'Peru'),
('45999402', 'Carlos', 'Manayay', 'logistica@delcor.com.pe', '959849381', 'cmanayay', 'Car!os#2021', 'DELCOR FABRICACIONES SAC', '20480606176', 'Cal. Yurimaguas Nro. 180 Int. 201', 'Chiclayo', 'Chiclayo', 'Chiclayo', 'Peru'),
('43935838', 'Dennis Raul', 'Sisa Calla', 'supervision@corminco.com', '988898627', 'dsisa', 'D3nn!s2022', 'CORMINCO S.A.C.', '20513654295', 'Cal. San Carlos-Pasando los Ri Mza. a Lote. 02', 'Santa Martha', 'Ate', 'Lima', 'Peru'),
('41343211', 'Roly', 'Cordova Raymundo', 'ingenieria@matserviperu.com', '922014752', 'rcordova', 'R0ly#2022', 'CORPORACION MATSERVI S.A.C.', '20603860561', 'Jr. Ayacucho Nro. 3130', 'Peru', 'San Martin de Porres', 'Lima', 'Peru'),
('59342103025', 'Paulino', 'Davila', 'paulinod@maquidam.com', '59342103025', 'pdavila', 'P@ul!no999', 'MAQUIDAM', '92757701001', 'Km 11.5 Via Daule', 'Parque Comercial California', '', '', 'Ecuador'),
('44368765', 'Giuseppe', 'Ascencios', 'gascencios@comigasac.com', '972731873', 'gascencios', 'G!useppe555', 'COMIGA S.A.C.', '20601255121', 'Jr. Juno Nro. 185 Dpto. 413', 'La Campiña Zona Dos', 'Chorrillos', 'Lima', 'Peru');


INSERT INTO grupo04.VENDEDOR (
    documento_identidad, nombre, apellido, email, telefono, 
    usuario, contrasena, direccion, urbanizacion, distrito, 
    departamento, pais
) VALUES
('72206925', 'Abel', 'Fernandez', 'afernandez@mecadustria.com', '935942774', 'afernandez', 'A8z!nL0p', 'Rio Chira 544', 'Los Olivos', 'Los Olivos', 'Lima', 'Peru'),
('42926359', 'Rody', 'Fernandez', 'rfernandez@mecadustria.com', '943140444', 'rfernandez', 'B2m@xY4k', 'Barranquilla 120', '', 'Pueblo Libre', 'Lima', 'Peru'),
('70468832', 'Andre', 'Marquez', 'amarquez@mecadustria.com', '994047029', 'amarquez', 'C9q#tV5r', '', '', 'Nazca', 'Ica', 'Peru'),
('41835644', 'David', 'Yactayo', 'dyactayo@mecadustria.com', '991334134', 'dyactayo', 'D3p$wX8j', '', '', 'Santa Anita', 'Lima', 'Peru');


INSERT INTO grupo04.ESTADOS_DE_PEDIDO (nombre) VALUES
('ingresado'),
('listo'),
('entregado'),
('anulado');


INSERT INTO grupo04.PROVEEDOR (
    razon_social, ruc, nombre, apellido, telefono, 
    email, direccion, urbanizacion, distrito, 
    departamento, pais
) VALUES
('INVERCE S.A.C.', '20521016893', 'Ronald', 'Boulangger', '987522163', 'ventas1@vercelli.pe', 'Av. Guillermo Dansey 678', '', 'Cercado de Lima', 'Lima', 'Peru'),
('NAOKI PERU S.A.C.', '20609365031', 'Romir', 'Delgado', '969745144', 'ventas@naokiperu.com', 'Prolongacion Pacasmayo 892', '', 'Cercado de Lima', 'Lima', 'Peru'),
('DUCASSE COMERCIAL S.A.', '20386659959', 'Lino', 'Concha', '981059215', 'lino.concha@ducasse.com.pe', 'Av. Roosevelt - Antes Republi Nro. 6426', 'San Antonio', 'Miraflores', 'Lima', 'Peru'),
('CORPORACION RODASUR S.A.C', '20144961146', 'Carlos', 'Orrillo', '998055045', 'corrillo@rodasur.com', 'Av. Agustin de la Rosa Toro Nro. 163', 'San Luis', 'San Luis', 'Lima', 'Peru');


INSERT INTO grupo04.ESTADOS_DE_COMPRA (nombre) VALUES
('ingresado'),
('recibido'),
('anulado');


INSERT INTO grupo04.TIPO_OPERACION (nombre) VALUES
('compra'),
('venta');


INSERT INTO grupo04.PRODUCTO (
    sku, codigo_barras, nombre_producto, descripcion, unidad, 
    modelo, precio, id_categoria, id_marca
) VALUES
('10000001', '1234567890123', 'cadena 40-1R', 'cadena paso 1/2 asa', 'metro', '40-1R', 18, 1, 1),
('10000002', '1234567890124', 'cadena 50-1R', 'cadena paso 5/8 asa', 'metro', '50-1R', 26, 1, 1),
('10000003', '1234567890125', 'cadena 60-1R', 'cadena paso 3/4 asa', 'metro', '60-1R', 34, 1, 1),
('10000004', '1234567890126', 'cadena 80-1R', 'cadena paso 1 asa', 'metro', '80-1R', 56, 1, 1),
('10000005', '1234567890127', 'cadena 100-1R', 'cadena paso 1 1/4 asa', 'metro', '100-1R', 89, 1, 3),
('10000006', '1234567890128', 'sprocket 40-1B17', 'sprocket paso 1/2 17 dientes', 'unidad', '40-1B17', 17, 2, 1),
('10000007', '1234567890129', 'sprocket 40-1B34', 'sprocket paso 1/2 34 dientes', 'unidad', '40-1B34', 37, 2, 1),
('10000008', '1234567890130', 'sprocket 50-1B17', 'sprocket paso 5/8 17 dientes', 'unidad', '50-1B17', 26, 2, 1),
('10000009', '1234567890131', 'sprocket 50-1B34', 'sprocket paso 5/8 34 dientes', 'unidad', '50-1B34', 69, 2, 1),
('10000010', '1234567890132', 'sprocket 60-1B17', 'sprocket paso 3/4 17 dientes', 'unidad', '60-1B17', 35, 2, 1),
('10000011', '1234567890133', 'sprocket 60-1B34', 'sprocket paso 3/4 34 dientes', 'unidad', '60-1B34', 86, 2, 1),
('10000012', '1234567890134', 'sprocket 80-1B17', 'sprocket paso 1 17 dientes', 'unidad', '80-1B17', 65, 2, 1),
('10000013', '1234567890135', 'sprocket 80-1B34', 'sprocket paso 1 34 dientes', 'unidad', '80-1B34', 175, 2, 1),
('10000014', '1234567890136', 'sprocket 100-1B17', 'sprocket paso 1 1/4 17 dientes', 'unidad', '100-1B17', 110, 2, 3),
('10000015', '1234567890137', 'sprocket 100-1B34', 'sprocket paso 1 1/4 34 dientes', 'unidad', '100-1B34', 292, 2, 3),
('10000016', '1234567890138', 'candado 40-1CL', 'candado paso 1/2 asa', 'unidad', '40-1CL', 2, 3, 1),
('10000017', '1234567890139', 'candado 50-1CL', 'candado paso 5/8 asa', 'unidad', '50-1CL', 2.5, 3, 1),
('10000018', '1234567890140', 'candado 60-1CL', 'candado paso 3/4 asa', 'unidad', '60-1CL', 3, 3, 1),
('10000019', '1234567890141', 'candado 80-1CL', 'candado paso 1 asa', 'unidad', '80-1CL', 4.5, 3, 1),
('10000020', '1234567890142', 'candado 100-1CL', 'candado paso 1 1/4 asa', 'unidad', '100-1CL', 7, 3, 3),
('10000021', '1234567890143', 'medio paso 40-1OL', 'medio paso paso 1/2 asa', 'unidad', '40-1OL', 3.5, 4, 1),
('10000022', '1234567890144', 'medio paso 50-1OL', 'medio paso paso 5/8 asa', 'unidad', '50-1OL', 4, 4, 1),
('10000023', '1234567890145', 'medio paso 60-1OL', 'medio paso paso 3/4 asa', 'unidad', '60-1OL', 4.5, 4, 1),
('10000024', '1234567890146', 'medio paso 80-1OL', 'medio paso paso 1 asa', 'unidad', '80-1OL', 7.5, 4, 1),
('10000025', '1234567890147', 'medio paso 100-1OL', 'medio paso paso 1 1/4 asa', 'unidad', '100-1OL', 12.5, 4, 3),
('10000026', '1234567890148', 'acoplamiento F1050', 'acoplamiento falk 1050', 'unidad', 'F1050', 345, 5, 2),
('10000027', '1234567890149', 'acoplamiento F1070', 'acoplamiento falk 1070', 'unidad', 'F1070', 520, 5, 2),
('10000028', '1234567890150', 'acoplamiento 25GDE', 'acoplamiento rejilla 25GDE', 'unidad', '25GDE', 1429, 5, 2),
('10000029', '1234567890151', 'acoplamiento 30GDE', 'acoplamiento rejilla 30GDE', 'unidad', '30GDE', 2025, 5, 2),
('10000030', '1234567890152', 'chumacera UCP201-8', 'chumacera de pie UCP201-8', 'unidad', 'UCP201-8', 11, 6, 3),
('10000031', '1234567890153', 'chumacera UCP205-16', 'chumacera de pie UCP205-16', 'unidad', 'UCP205-16', 12, 6, 3),
('10000032', '1234567890154', 'chumacera UCP207-22', 'chumacera de pie UCP207-22', 'unidad', 'UCP207-22', 20, 6, 4),
('10000033', '1234567890155', 'chumacera UCF201-8', 'chumacera de pared UCF201-8', 'unidad', 'UCF201-8', 11, 6, 3),
('10000034', '1234567890156', 'chumacera UCF205-16', 'chumacera de pared UCF205-16', 'unidad', 'UCF205-16', 12, 6, 3),
('10000035', '1234567890157', 'chumacera UCF207-22', 'chumacera de pared UCF207-22', 'unidad', 'UCF207-22', 20, 6, 4);


INSERT INTO grupo04.COMPRA (fecha_compra, hora_compra, id_proveedor, comprobante)
VALUES
('2023-05-25', '09:00:00', 1, 'F001-2527'),
('2023-05-25', '09:30:00', 2, 'FK01-132'),
('2023-05-25', '09:00:00', 1, 'F001-2532'),
('2023-05-25', '09:45:00', 3, 'F002-232'),
('2023-05-25', '09:15:00', 4, 'F001-1152'),
('2023-05-25', '10:00:00', 2, 'FK01-133');


INSERT INTO grupo04.DETALLE_COMPRA (id_compra, id_producto, cantidad, costo_unitario, subtotal)
VALUES
(1, 1, 5000, 12, 60000),
(1, 2, 5000, 17.3, 86500),
(1, 3, 5000, 23.4, 117000),
(1, 4, 5000, 38, 190000),
(1, 5, 5000, 60, 300000),
(2, 6, 5000, 11.45, 57250),
(2, 7, 5000, 24.8, 124000),
(2, 8, 5000, 17.35, 86750),
(2, 9, 5000, 46, 230000),
(2, 10, 5000, 25, 125000),
(2, 11, 5000, 57.85, 289250),
(2, 12, 5000, 44.5, 222500),
(2, 13, 5000, 118, 590000),
(2, 14, 5000, 74.2, 371000),
(2, 15, 5000, 196, 980000),
(3, 16, 5000, 1.32, 6600),
(3, 17, 5000, 1.7, 8500),
(3, 18, 5000, 2, 10000),
(3, 19, 5000, 3, 15000),
(3, 20, 5000, 5, 25000),
(3, 21, 5000, 2.8, 14000),
(3, 22, 5000, 3.2, 16000),
(3, 23, 5000, 3, 15000),
(3, 24, 5000, 5, 25000),
(3, 25, 5000, 8.45, 42250),
(4, 26, 5000, 230, 1150000),
(4, 27, 5000, 347, 1735000),
(5, 28, 5000, 954, 4770000),
(5, 29, 5000, 1350, 6750000),
(6, 30, 5000, 7.6, 38000),
(6, 31, 5000, 8, 40000),
(6, 32, 5000, 14, 70000),
(6, 33, 5000, 8, 40000),
(6, 34, 5000, 8, 40000),
(6, 35, 5000, 13.32, 66600);


INSERT INTO grupo04.COMPRA_ESTADO (id_compra, id_estado_c, fecha_estado, hora_estado)
VALUES
(1, 1, '2023-05-25', '09:00:00'),
(2, 1, '2023-05-25', '09:30:00'),
(3, 1, '2023-05-25', '09:00:00'),
(4, 1, '2023-05-25', '09:45:00'),
(5, 1, '2023-05-25', '09:15:00'),
(6, 1, '2023-05-25', '10:00:00'),
(1, 2, '2023-05-30', '16:15:00'),
(3, 2, '2023-05-30', '16:15:00'),
(2, 2, '2023-05-30', '16:30:00'),
(6, 2, '2023-05-30', '16:30:00'),
(4, 2, '2023-05-30', '17:00:00'),
(5, 2, '2023-05-30', '18:00:00');
GO

/* Verificando Tablas creadas */

-- SELECT * FROM grupo04.CATEGORIAS ?
-- SELECT * FROM grupo04.MARCA ?
-- SELECT * FROM grupo04.CLIENTE ?
-- SELECT * FROM grupo04.VENDEDOR ?
-- SELECT * FROM grupo04.ESTADOS_DE_PEDIDO ?
-- SELECT * FROM grupo04.PROVEEDOR ?
-- SELECT * FROM grupo04.ESTADOS_DE_COMPRA ?
-- SELECT * FROM grupo04.TIPO_OPERACION ?
-- SELECT * FROM grupo04.PRODUCTO ?
-- SELECT * FROM grupo04.COMPRA ?
-- SELECT * FROM grupo04.DETALLE_COMPRA ?
-- SELECT * FROM grupo04.COMPRA_ESTADO ?


/* Creación aleatoria de registros en PEDIDO, DETALLE_PEDIDO, PEDIDO_ESTADO, e INVENTARIO */

-- Verificar si la columna id_producto existe y agregarla si no existe de manera TEMPORAL
IF NOT EXISTS (SELECT * FROM sys.columns 
               WHERE object_id = OBJECT_ID(N'grupo04.INVENTARIO') 
               AND name = 'id_producto')
BEGIN
    ALTER TABLE grupo04.INVENTARIO ADD id_producto INT;
END;
GO

INSERT INTO grupo04.INVENTARIO (
    id_detalle_compra, 
    id_detalle_pedido, 
    id_tipo_operacion, 
    stock_inicial, 
    stock_final, 
    fecha_inventario, 
    hora_inventario,
	id_producto
)
VALUES
(1, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 1),
(2, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 2),
(3, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 3),
(4, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 4),
(5, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 5),
(6, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 6),
(7, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 7),
(8, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 8),
(9, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 9),
(10, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 10),
(11, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 11),
(12, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 12),
(13, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 13),
(14, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 14),
(15, NULL, 1, 0, 5000, '2023-05-30', '16:15:00', 15),
(16, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 16),
(17, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 17),
(18, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 18),
(19, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 19),
(20, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 20),
(21, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 21),
(22, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 22),
(23, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 23),
(24, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 24),
(25, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 25),
(26, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 26),
(27, NULL, 1, 0, 5000, '2023-05-30', '16:30:00', 27),
(28, NULL, 1, 0, 5000, '2023-05-30', '17:00:00', 28),
(29, NULL, 1, 0, 5000, '2023-05-30', '17:00:00', 29),
(30, NULL, 1, 0, 5000, '2023-05-30', '18:00:00', 30),
(31, NULL, 1, 0, 5000, '2023-05-30', '18:00:00', 31),
(32, NULL, 1, 0, 5000, '2023-05-30', '18:00:00', 32),
(33, NULL, 1, 0, 5000, '2023-05-30', '18:00:00', 33),
(34, NULL, 1, 0, 5000, '2023-05-30', '18:00:00', 34),
(35, NULL, 1, 0, 5000, '2023-05-30', '18:00:00', 35);
GO

/*SELECT * FROM grupo04.INVENTARIO
GO*/

-- Crear data aleatoria para PEDIDO, DETALLE_PEDIDO, PEDIDO_ESTADO, e INVENTARIO con orden cronológico
DECLARE @num_productos INT = (SELECT COUNT(*) FROM grupo04.PRODUCTO);
DECLARE @num_clientes INT = (SELECT COUNT(*) FROM grupo04.CLIENTE);
DECLARE @num_vendedores INT = (SELECT COUNT(*) FROM grupo04.VENDEDOR);
DECLARE @fecha_inicio DATE = '2023-01-01';
DECLARE @fecha_fin DATE = '2023-12-31';

DECLARE @dia_actual DATE = @fecha_inicio;
DECLARE @contador INT = 1;

WHILE @dia_actual <= @fecha_fin
BEGIN
    DECLARE @pedidos_en_dia INT = ABS(CHECKSUM(NEWID()) % 7); -- Cantidad aleatoria de pedidos por día entre 0 y 6

    WHILE @pedidos_en_dia > 0
    BEGIN
        DECLARE @id_cliente INT = (SELECT TOP 1 id_cliente FROM grupo04.CLIENTE ORDER BY NEWID());
        DECLARE @id_vendedor INT = (SELECT TOP 1 id_vendedor FROM grupo04.VENDEDOR ORDER BY NEWID());
        DECLARE @hora_pedido TIME = DATEADD(MINUTE, ABS(CHECKSUM(NEWID()) % 480), '06:00:00'); -- Hora aleatoria entre 06:00 y 14:00
        DECLARE @comprobante VARCHAR(100) = CONCAT('F001-', RIGHT('00000' + CAST(@contador AS VARCHAR), 5));

        -- Insertar en PEDIDO y capturar el ID del pedido
        INSERT INTO grupo04.PEDIDO (fecha_pedido, hora_pedido, id_cliente, id_vendedor, comprobante)
        VALUES (@dia_actual, @hora_pedido, @id_cliente, @id_vendedor, @comprobante);

        DECLARE @id_pedido INT = SCOPE_IDENTITY();
        DECLARE @num_productos_pedido INT = ABS(CHECKSUM(NEWID()) % 3) + 1; -- Entre 1 y 3 productos

        -- Generar DETALLE_PEDIDO y actualizar INVENTARIO
        WHILE @num_productos_pedido > 0
        BEGIN
            DECLARE @id_producto INT = (SELECT TOP 1 id_producto FROM grupo04.PRODUCTO ORDER BY NEWID());
            DECLARE @cantidad INT = ABS(CHECKSUM(NEWID()) % 5) + 1; -- Cantidad entre 1 y 5 unidades
            DECLARE @precio_unitario DECIMAL(10, 2) = (SELECT precio FROM grupo04.PRODUCTO WHERE id_producto = @id_producto);
            DECLARE @subtotal DECIMAL(10, 2) = @cantidad * @precio_unitario;

            INSERT INTO grupo04.DETALLE_PEDIDO (id_pedido, id_producto, cantidad, precio_unitario, subtotal)
            VALUES (@id_pedido, @id_producto, @cantidad, @precio_unitario, @subtotal);

            DECLARE @id_detalle_pedido INT = SCOPE_IDENTITY();

            -- Actualizar INVENTARIO
            DECLARE @stock_inicial INT = (SELECT TOP 1 stock_final FROM grupo04.INVENTARIO WHERE id_producto = @id_producto ORDER BY fecha_inventario DESC, hora_inventario DESC);
            IF @stock_inicial IS NULL
                SET @stock_inicial = 0;
            DECLARE @stock_final INT = @stock_inicial - @cantidad;

            INSERT INTO grupo04.INVENTARIO (id_detalle_compra, id_detalle_pedido, id_producto, id_tipo_operacion, stock_inicial, stock_final, fecha_inventario, hora_inventario)
            VALUES (NULL, @id_detalle_pedido, @id_producto, 2, @stock_inicial, @stock_final, @dia_actual, @hora_pedido);

            SET @num_productos_pedido = @num_productos_pedido - 1;
        END

        -- Generar PEDIDO_ESTADO con diferencias de tiempo aleatorias entre 60 y 180 minutos
        DECLARE @hora_estado1 TIME = @hora_pedido;
        DECLARE @hora_estado2 TIME = DATEADD(MINUTE, ABS(CHECKSUM(NEWID()) % 121) + 60, @hora_estado1);
        DECLARE @hora_estado3 TIME = DATEADD(MINUTE, ABS(CHECKSUM(NEWID()) % 121) + 60, @hora_estado2);

        INSERT INTO grupo04.PEDIDO_ESTADO (id_pedido, id_estado_p, fecha_estado, hora_estado)
        VALUES (@id_pedido, 1, @dia_actual, @hora_estado1);

        INSERT INTO grupo04.PEDIDO_ESTADO (id_pedido, id_estado_p, fecha_estado, hora_estado)
        VALUES (@id_pedido, 2, @dia_actual, @hora_estado2);

        INSERT INTO grupo04.PEDIDO_ESTADO (id_pedido, id_estado_p, fecha_estado, hora_estado)
        VALUES (@id_pedido, 3, @dia_actual, @hora_estado3);

        SET @pedidos_en_dia = @pedidos_en_dia - 1;
        SET @contador = @contador + 1;
    END

    SET @dia_actual = DATEADD(DAY, 1, @dia_actual);
END;
GO

-- Eliminar la columna TEMPORAL id_producto de la tabla INVENTARIO
ALTER TABLE grupo04.INVENTARIO DROP COLUMN id_producto;
GO


/* Verificando Tablas creadas */

-- SELECT * FROM grupo04.PEDIDO ?
-- SELECT * FROM grupo04.DETALLE_PEDIDO ?
-- SELECT * FROM grupo04.PEDIDO_ESTADO ?
-- SELECT * FROM grupo04.INVENTARIO ?