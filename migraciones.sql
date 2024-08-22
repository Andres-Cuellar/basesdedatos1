CREATE DATABASE tienda_db;

SHOW DATABASES;

USE tienda_db CREATE TABLE tipo_cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE tipo_documento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE barrio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE ubicacion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    direccion_calle VARCHAR(255),
    direccion_numero VARCHAR(255),
    direccion_detalle VARCHAR(255),
    barrio INT,
    FOREIGN KEY (barrio) REFERENCES barrio(id)
);

CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    primer_nombre VARCHAR(255),
    segundo_nombre VARCHAR(255),
    primer_apellido VARCHAR(255),
    segundo_apellido VARCHAR(255),
    tipo_cliente INT,
    tipo_documento INT,
    documento VARCHAR(255),
    telefono VARCHAR(255),
    correo VARCHAR(255),
    ubicacion INT,
    FOREIGN KEY (tipo_cliente) REFERENCES tipo_cliente(id),
    FOREIGN KEY (tipo_documento) REFERENCES tipo_documento(id),
    FOREIGN KEY (ubicacion) REFERENCES ubicacion(id)
);

CREATE TABLE tienda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    tipo_documento INT,
    documento VARCHAR(255),
    telefono VARCHAR(255),
    ubicacion INT,
    FOREIGN KEY (tipo_documento) REFERENCES tipo_documento(id),
    FOREIGN KEY (ubicacion) REFERENCES ubicacion(id)
);

CREATE TABLE proveedor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    primer_nombre VARCHAR(255),
    segundo_nombre VARCHAR(255),
    primer_apellido VARCHAR(255),
    segundo_apellido VARCHAR(255),
    telefono VARCHAR(255),
    correo VARCHAR(255),
    ubicacion INT,
    FOREIGN KEY (ubicacion) REFERENCES ubicacion(id)
);

CREATE TABLE unidad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre text
);

CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    tipo VARCHAR(255),
    unidad INT,
    FOREIGN KEY (unidad) REFERENCES unidad(id)
);

CREATE TABLE producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion VARCHAR(255),
    precio DECIMAL(10, 2),
    impuesto DECIMAL(10, 2),
    categoria INT,
    proveedor INT,
    FOREIGN KEY (categoria) REFERENCES categoria(id),
    FOREIGN KEY (proveedor) REFERENCES proveedor(id)
);

CREATE TABLE venta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2),
    subtotal DECIMAL(10, 2),
    total_impuesto DECIMAL(10, 2),
    cliente INT,
    tienda INT,
    FOREIGN KEY (cliente) REFERENCES cliente(id),
    FOREIGN KEY (tienda) REFERENCES tienda(id)
);

CREATE TABLE detalle_venta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venta INT,
    producto INT,
    cantidad INT,
    FOREIGN KEY (venta) REFERENCES venta(id),
    FOREIGN KEY (producto) REFERENCES producto(id)
);