-- Insert sample data into tipo_cliente
insert into
  tipo_cliente (nombre)
values
  ('Regular'),
  ('VIP');

-- Insert sample data into tipo_documento
insert into
  tipo_documento (nombre)
values
  ('DNI'),
  ('Pasaporte');

-- Insert sample data into barrio
insert into
  barrio (nombre)
values
  ('Centro'),
  ('Norte');

-- Insert sample data into ubicacion
insert into
  ubicacion (
    direccion_calle,
    direccion_numero,
    direccion_detalle,
    barrio
  )
values
  ('Calle 1', '123', 'Apt 1', 1),
  ('Avenida 2', '456', 'Casa', 2);

-- Insert sample data into cliente
insert into
  cliente (
    primer_nombre,
    segundo_nombre,
    primer_apellido,
    segundo_apellido,
    tipo_cliente,
    tipo_documento,
    documento,
    telefono,
    correo,
    ubicacion
  )
values
  (
    'Juan',
    'Carlos',
    'Pérez',
    'Gómez',
    1,
    1,
    '12345678',
    '555-1234',
    'juan@example.com',
    1
  ),
  (
    'María',
    'Luisa',
    'Rodríguez',
    'López',
    2,
    2,
    '87654321',
    '555-5678',
    'maria@example.com',
    2
  );

-- Insert sample data into tienda
insert into
  tienda (
    nombre,
    tipo_documento,
    documento,
    telefono,
    ubicacion
  )
values
  ('Tienda Centro', 1, '123456789', '555-0001', 1),
  ('Tienda Norte', 2, '987654321', '555-0002', 2);

-- Insert sample data into proveedor
insert into
  proveedor (
    primer_nombre,
    segundo_nombre,
    primer_apellido,
    segundo_apellido,
    telefono,
    correo,
    ubicacion
  )
values
  (
    'Carlos',
    'Andrés',
    'Martínez',
    'Ruiz',
    '555-1111',
    'carlos@example.com',
    1
  ),
  (
    'Ana',
    'María',
    'García',
    'Fernández',
    '555-2222',
    'ana@example.com',
    2
  );

-- Insert sample data into categoria
insert into
  categoria (nombre, tipo, unidad)
values
  (
    'Lácteos',
    'Productos derivados de la leche, como leche, queso y yogurt.'
  ),
  ('Aceites', 'Aceites comestibles y de cocina.'),
  (
    'Granos',
    'Productos como arroz, maíz y otros granos.'
  ),
  (
    'Abarrotes',
    'Productos de despensa y artículos de uso diario.'
  ),
  (
    'Higiene',
    'Productos de cuidado personal y limpieza.'
  );

-- Insert sample data into producto
insert into
  producto (
    nombre,
    descripcion,
    precio,
    impuesto,
    categoria,
    proveedor
  )
values
  (
    'Teléfono',
    'Smartphone de última generación',
    299.99,
    19.99,
    1,
    1
  ),
  (
    'Camiseta',
    'Camiseta de algodón',
    19.99,
    1.99,
    2,
    2
  );

-- Insert sample data into venta
insert into
  venta (total, subtotal, total_impuesto, cliente, tienda)
values
  (319.98, 299.99, 19.99, 1, 1),
  (21.98, 19.99, 1.99, 2, 2);

-- Insert sample data into detalle_venta
insert into
  detalle_venta (venta, producto, cantidad)
values
  (1, 1, 1),
  (2, 2, 1);