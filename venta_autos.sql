use [venta_autos]
go
-- ********************************************

-- Proyecto : BI en negocio de Ventas de autos
-- Autor : Cristhian Carbajal Cusi

-- ********************************************

-- Tabla para almacenar información de clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Telefono NVARCHAR(15),
    Email NVARCHAR(100),
    Direccion NVARCHAR(255)
);

-- Tabla para almacenar información de marcas de autos
CREATE TABLE Marcas (
    MarcaID INT PRIMARY KEY,
    Nombre NVARCHAR(50) UNIQUE
);

-- Tabla para almacenar información de modelos de autos
CREATE TABLE Modelos (
    ModeloID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    MarcaID INT REFERENCES Marcas(MarcaID),
    AnioLanzamiento INT,
    Precio DECIMAL(10, 2)
);

-- Tabla para almacenar información de ventas
CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY,
    ClienteID INT REFERENCES Clientes(ClienteID),
    ModeloID INT REFERENCES Modelos(ModeloID),
    FechaVenta DATE,
    PrecioVenta FLOAT,
    Descuento FLOAT
);
go

-- Registros para la tabla Marcas
INSERT INTO Marcas (MarcaID, Nombre) VALUES
(1, 'Toyota'),
(2, 'Ford'),
(3, 'Honda'),
(4, 'Chevrolet'),
(5, 'Volkswagen'),
(6, 'Nissan'),
(7, 'BMW'),
(8, 'Mercedes-Benz'),
(9, 'Audi'),
(10, 'Hyundai');

-- Registros para la tabla Modelos
INSERT INTO Modelos (ModeloID, Nombre, MarcaID, AnioLanzamiento, Precio) VALUES
(101, 'Camry', 1, 2020, 25000),
(102, 'F-150', 2, 2021, 35000),
(103, 'Civic', 3, 2019, 22000),
(104, 'Malibu', 4, 2020, 28000),
(105, 'Jetta', 5, 2021, 24000),
(106, 'Altima', 6, 2022, 26000),
(107, 'X5', 7, 2020, 55000),
(108, 'E-Class', 8, 2019, 60000),
(109, 'A4', 9, 2021, 45000),
(110, 'Santa Fe', 10, 2022, 32000);

-- Registros para la tabla Clientes
INSERT INTO Clientes (ClienteID, Nombre, Telefono, Email, Direccion) VALUES
(201, 'Juan Pérez', '555-1234', 'juan.perez@email.com', 'Calle 123, Ciudad'),
(202, 'Ana Rodriguez', '555-5678', 'ana.rodriguez@email.com', 'Avenida XYZ, Ciudad'),
(203, 'Carlos González', '555-9876', 'carlos.gonzalez@email.com', 'Boulevard ABC, Ciudad'),
(204, 'María López', '555-4321', 'maria.lopez@email.com', 'Calle 456, Ciudad'),
(205, 'Pedro Ramirez', '555-8765', 'pedro.ramirez@email.com', 'Avenida LMN, Ciudad');
 
-- Registros para la tabla Ventas (año 2023)
INSERT INTO Ventas (VentaID, ClienteID, ModeloID, FechaVenta, PrecioVenta, Descuento) VALUES
(301, 201, 101, '2023-01-15', 24000.0, 1000),
(302, 202, 103, '2023-02-20', 22000.0, 800),
(303, 203, 105, '2023-03-10', 24000.0, 1200),
(304, 204, 107, '2023-04-05', 55000.0, 2000),
(305, 205, 110, '2023-05-15', 32000.0, 1500)
-- Agrega más registros según sea necesario.
 
-- Registros para la tabla Ventas (año 2022)
INSERT INTO Ventas (VentaID, ClienteID, ModeloID, FechaVenta, PrecioVenta, Descuento) VALUES
(306, 201, 102, '2022-01-18', 35000, 1500),
(307, 202, 104, '2022-02-22', 28000, 1000),
(308, 203, 106, '2022-03-12', 26000, 1200),
(309, 204, 108, '2022-04-08', 60000, 2500),
(310, 205, 109, '2022-05-20', 45000, 1800)
-- Agrega más registros según sea necesario.
GO
-- Registros adicionales para la tabla Ventas (año 2023)
INSERT INTO Ventas (VentaID, ClienteID, ModeloID, FechaVenta, PrecioVenta, Descuento) VALUES
(311, 201, 101, '2023-06-08', 24000.0, 1000),
(312, 202, 103, '2023-07-14', 22000.0, 800),
(313, 203, 105, '2023-08-25', 24000.0, 1200),
(314, 204, 107, '2023-09-03', 55000.0, 2000),
(315, 205, 110, '2023-10-12', 32000.0, 1500);

-- Registros adicionales para la tabla Ventas (año 2022)
INSERT INTO Ventas (VentaID, ClienteID, ModeloID, FechaVenta, PrecioVenta, Descuento) VALUES
(316, 201, 101, '2022-06-10', 24000.0, 1000),
(317, 202, 103, '2022-07-18', 22000.0, 800),
(318, 203, 105, '2022-08-28', 24000.0, 1200),
(319, 204, 107, '2022-09-05', 55000.0, 2000),
(320, 205, 110, '2022-10-15', 32000.0, 1500);

-- Registros adicionales para la tabla Ventas (año 2021)
INSERT INTO Ventas (VentaID, ClienteID, ModeloID, FechaVenta, PrecioVenta, Descuento) VALUES
(321, 201, 102, '2021-06-10', 35000.0, 1500),
(322, 202, 104, '2021-07-18', 28000.0, 1000),
(323, 203, 106, '2021-08-28', 26000.0, 1200),
(324, 204, 108, '2021-09-05', 60000.0, 2500),
(325, 205, 109, '2021-10-15', 45000.0, 1800),
(326, 201, 101, '2021-11-22', 24000.0, 1000),
(327, 202, 103, '2021-12-10', 22000.0, 800),
(328, 203, 105, '2021-01-15', 24000.0, 1200),
(329, 204, 107, '2021-02-20', 55000.0, 2000),
(330, 205, 110, '2021-03-28', 32000.0, 1500),
(331, 201, 102, '2021-04-10', 35000.0, 1500),
(332, 202, 104, '2021-05-18', 28000.0, 1000),
(333, 203, 106, '2021-06-28', 26000.0, 1200),
(334, 204, 108, '2021-07-05', 60000.0, 2500),
(335, 205, 109, '2021-08-15', 45000.0, 1800);

-- Registros adicionales para la tabla Ventas (año 2024, enero y febrero)
INSERT INTO Ventas (VentaID, ClienteID, ModeloID, FechaVenta, PrecioVenta, Descuento) VALUES
(336, 201, 101, '2024-01-05', 24000.0, 1000),
(337, 202, 103, '2024-01-12', 22000.0, 800),
(338, 203, 105, '2024-01-20', 24000.0, 1200),
(339, 204, 107, '2024-01-28', 55000.0, 2000),
(340, 205, 110, '2024-02-03', 32000.0, 1500),
(341, 201, 102, '2024-02-10', 35000.0, 1500),
(342, 202, 104, '2024-02-18', 28000.0, 1000),
(343, 203, 106, '2024-02-25', 26000.0, 1200),
(344, 204, 108, '2024-02-01', 60000.0, 2500),
(345, 205, 109, '2024-02-08', 45000.0, 1800),
(346, 201, 101, '2024-01-15', 24000.0, 1000),
(347, 202, 103, '2024-01-22', 22000.0, 800),
(348, 203, 105, '2024-01-30', 24000.0, 1200),
(349, 204, 107, '2024-02-05', 55000.0, 2000),
(350, 205, 110, '2024-02-12', 32000.0, 1500);
GO
 