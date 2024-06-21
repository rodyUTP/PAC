CREATE SCHEMA grupo04
GO

/* Creación de Tablas */

CREATE TABLE grupo04.CLIENTE (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    documento_identidad VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20) NOT NULL,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(50) NOT NULL,
    razon_social VARCHAR(100),
    ruc CHAR(11),
    direccion VARCHAR(200) NOT NULL,
    urbanizacion VARCHAR(100),
    distrito VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL
);

CREATE TABLE grupo04.VENDEDOR (
    id_vendedor INT IDENTITY(1,1) PRIMARY KEY,
    documento_identidad VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20) NOT NULL,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(50) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    urbanizacion VARCHAR(100),
    distrito VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL
);

CREATE TABLE grupo04.PROVEEDOR (
    id_proveedor INT IDENTITY(1,1) PRIMARY KEY,
    razon_social VARCHAR(100) NOT NULL,
    ruc CHAR(11) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE,
    direccion VARCHAR(200) NOT NULL,
    urbanizacion VARCHAR(100),
    distrito VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL
);

CREATE TABLE grupo04.CATEGORIAS (
    id_categoria INT IDENTITY(1,1) PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL UNIQUE,
    descripcion VARCHAR(250) NOT NULL
);

CREATE TABLE grupo04.MARCA (
    id_marca INT IDENTITY(1,1) PRIMARY KEY,
    nombre_marca VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE grupo04.PRODUCTO (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    sku VARCHAR(50) NOT NULL UNIQUE,
    codigo_barras VARCHAR(50) NOT NULL UNIQUE,
    nombre_producto VARCHAR(100) NOT NULL UNIQUE,
    descripcion VARCHAR(250),
    unidad VARCHAR(50),
    modelo VARCHAR(50),
    precio DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    id_marca INT,

);

CREATE TABLE grupo04.ESTADOS_DE_PEDIDO (
    id_estado_p INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE
);

CREATE TABLE grupo04.ESTADOS_DE_COMPRA (
    id_estado_c INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE
);

CREATE TABLE grupo04.TIPO_OPERACION (
    id_tipo_operacion INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE
);

---------------------------

CREATE TABLE grupo04.PEDIDO (
    id_pedido INT IDENTITY(1,1) PRIMARY KEY,
    fecha_pedido DATE,
    hora_pedido TIME,
    id_cliente INT,
    id_vendedor INT,
    comprobante VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE grupo04.DETALLE_PEDIDO (
    id_detalle_pedido INT IDENTITY(1,1) PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2),
    subtotal DECIMAL(10, 2)
);

CREATE TABLE grupo04.PEDIDO_ESTADO (
    id_pedido_estado INT IDENTITY(1,1) PRIMARY KEY,
    id_pedido INT,
    id_estado_p INT,
    fecha_estado DATE NOT NULL,
    hora_estado TIME NOT NULL
);

CREATE TABLE grupo04.COMPRA (
    id_compra INT IDENTITY(1,1) PRIMARY KEY,
    fecha_compra DATE NOT NULL,
    hora_compra TIME NOT NULL,
    id_proveedor INT,
    comprobante VARCHAR(100) UNIQUE
);

CREATE TABLE grupo04.DETALLE_COMPRA (
    id_detalle_compra INT IDENTITY(1,1) PRIMARY KEY,
    id_compra INT,
    id_producto INT,
    cantidad INT NOT NULL,
    costo_unitario DECIMAL(10, 2),
    subtotal DECIMAL(10, 2)
);


CREATE TABLE grupo04.COMPRA_ESTADO (
    id_compra_estado INT IDENTITY(1,1) PRIMARY KEY,
    id_compra INT,
    id_estado_c INT,
    fecha_estado DATE NOT NULL,
    hora_estado TIME NOT NULL
);

CREATE TABLE grupo04.INVENTARIO (
    id_inventario INT IDENTITY(1,1) PRIMARY KEY,
    id_detalle_compra INT,
    id_detalle_pedido INT,
    id_tipo_operacion INT,
    stock_inicial INT NOT NULL,
    stock_final INT NOT NULL,
    fecha_inventario DATE,
    hora_inventario TIME
);


ALTER TABLE grupo04.PRODUCTO
ADD CONSTRAINT FK_CATEGORIA_PRODUCTO FOREIGN KEY (id_categoria) REFERENCES grupo04.CATEGORIAS(id_categoria);

ALTER TABLE grupo04.PRODUCTO
ADD CONSTRAINT FK_MARCA_PRODUCTO FOREIGN KEY (id_marca) REFERENCES grupo04.MARCA(id_marca);

ALTER TABLE grupo04.PEDIDO
ADD CONSTRAINT FK_CLIENTE_PEDIDO FOREIGN KEY (id_cliente) REFERENCES grupo04.CLIENTE(id_cliente);

ALTER TABLE grupo04.PEDIDO
ADD CONSTRAINT FK_VENDEDOR_PEDIDO FOREIGN KEY (id_vendedor) REFERENCES grupo04.VENDEDOR(id_vendedor);

ALTER TABLE grupo04.DETALLE_PEDIDO
ADD CONSTRAINT FK_PEDIDO_DETALLE_PEDIDO FOREIGN KEY (id_pedido) REFERENCES grupo04.PEDIDO(id_pedido);

ALTER TABLE grupo04.DETALLE_PEDIDO
ADD CONSTRAINT FK_PRODUCTO_DETALLE_PEDIDO FOREIGN KEY (id_producto) REFERENCES grupo04.PRODUCTO(id_producto);

ALTER TABLE grupo04.PEDIDO_ESTADO
ADD CONSTRAINT FK_PEDIDO_PEDIDO_ESTADO FOREIGN KEY (id_pedido) REFERENCES grupo04.PEDIDO(id_pedido);

ALTER TABLE grupo04.PEDIDO_ESTADO
ADD CONSTRAINT FK_ESTADO_PEDIDO_PEDIDO_ESTADO FOREIGN KEY (id_estado_p) REFERENCES grupo04.ESTADOS_DE_PEDIDO(id_estado_p);

ALTER TABLE grupo04.COMPRA
ADD CONSTRAINT FK_PROVEEDOR_COMPRA FOREIGN KEY (id_proveedor) REFERENCES grupo04.PROVEEDOR(id_proveedor);

ALTER TABLE grupo04.DETALLE_COMPRA
ADD CONSTRAINT FK_COMPRA_DETALLE_COMPRA FOREIGN KEY (id_compra) REFERENCES grupo04.COMPRA(id_compra);

ALTER TABLE grupo04.DETALLE_COMPRA
ADD CONSTRAINT FK_PRODUCTO_DETALLE_COMPRA FOREIGN KEY (id_producto) REFERENCES grupo04.PRODUCTO(id_producto);

ALTER TABLE grupo04.COMPRA_ESTADO
ADD CONSTRAINT FK_COMPRA_COMPRA_ESTADO FOREIGN KEY (id_compra) REFERENCES grupo04.COMPRA(id_compra);

ALTER TABLE grupo04.COMPRA_ESTADO
ADD CONSTRAINT FK_ESTADO_COMPRA_COMPRA_ESTADO FOREIGN KEY (id_estado_c) REFERENCES grupo04.ESTADOS_DE_COMPRA(id_estado_c);

ALTER TABLE grupo04.INVENTARIO
ADD CONSTRAINT FK_DETALLE_COMPRA_INVENTARIO FOREIGN KEY (id_detalle_compra) REFERENCES grupo04.DETALLE_COMPRA(id_detalle_compra);

ALTER TABLE grupo04.INVENTARIO
ADD CONSTRAINT FK_DETALLE_PEDIDO_INVENTARIO FOREIGN KEY (id_detalle_pedido) REFERENCES grupo04.DETALLE_PEDIDO(id_detalle_pedido);

ALTER TABLE grupo04.INVENTARIO
ADD CONSTRAINT FK_TIPO_OPERACION_INVENTARIO FOREIGN KEY (id_tipo_operacion) REFERENCES grupo04.TIPO_OPERACION(id_tipo_operacion);
