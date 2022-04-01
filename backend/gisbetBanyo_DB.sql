CREATE DATABASE IF NOT EXISTS gisbetBanyo_DB;

USE gisbetBanyo_DB;

CREATE TABLE IF NOT EXISTS clientes (
    dni VARCHAR (9) PRIMARY KEY,
    nombre VARCHAR (30),
    direccion VARCHAR (50),
    localidad VARCHAR (30),
    provincia VARCHAR (30),
    telefono VARCHAR (9),
    email VARCHAR (30)
);

INSERT INTO clientes (dni, nombre, direccion, localidad, provincia, telefono, email)
VALUES
('31559875H', 'Arturo Perez-Reverte', 'Avenida Constitucion 17 3B', 'Elda', 'Alicante', '975765456', 'arturoperezreverte@gmail.com'),
('79157842G', 'Miguel de Unamuno', 'Plaza de las Malvas 27 4C', 'Albacete', 'Albacete', '691254781', 'migueldeunamuno@gmail.com'),
('47569575B', 'Isabel Allende', 'Los Olivos 34 1J', 'Sevilla', 'Sevilla', '693459782', 'isabelallende@gmail.com'),
('25843691B', 'Francisco Baldomero', 'Altiplano 25 2C', 'Lepe', 'Huelva', '689421689', 'franciscobladomero@gmail.com'),
('36572158V', 'Margarita Fernandez', 'Las casitas 45', 'Cuntis', 'Pontevedra', '7586932174', 'margaritafernandez@gmail.com'),
('65879635S', 'Eustaquio Canto Cano', 'Benito Perez Galdos 34 3D', 'Villena', 'Alicante', '635872541', 'eustaquiocantocano'),
('75869324L', 'Patrick Rotfus', 'Cañada 34', 'Villena', 'Alicante', '755215215', 'patrickrotfus@gmail.com'),
('58637931W', 'John Ronald Reuel Tolkien', 'La Comarca 32 1C', 'Bolson Cerrado', 'La Comarca', '658412589', 'jrrt@gmail.com'),
('75983214T', 'Robert E Howart', 'Casicas del señor 12', 'Alicante', 'Alicante', '635213121', 'conan@gmail.com'),
('19657394W', 'Andrzej Sapkowski', 'Temeria 34', 'Vengerberg', 'Aedirn', '733898741', 'thewitcher@gmail.com'),
('58234498G', 'Michael Moorcock', 'Grandes escritores 45', 'Madrid', 'Madrid', '695369963', 'campeoneterno@gmail.com'),
('72396542Q', 'William Faulkner', 'Estafeta 87 1D', 'Pamplona', 'Pamplona', '753159854', 'williamfaulkner@gmail.com'),
('72589654H', 'Oscar Wilde', 'Gran Vía 134 2D', 'Alicante', 'Alicante', '619736542', 'oscarwilde@gmail.com'),
('25731458L', 'Franz Kafka', 'Paseo de los Tristes 94', 'Granada', 'Granada', '638554221', 'franzkafka@gmail.com'),
('12358641E', 'William Shakespeare', 'Marques de Larios 21', 'Málaga', 'Málaga', '733447147', 'williamshakespeare@gmail.com'),
('26439874K', 'James Joyce', 'Laurel 36 2C', 'Logroño', 'Logroño', '722998877', 'jamesjoyce@gmail.com'),
('68542142H', 'Philip K. Dick', 'Paseo de Gracia 41 5D', 'Barcelona', 'Barcelona', '658965874', 'philipkdick@gmail.com'),
('32154785G', 'Gabriel García Márquez', 'Ruta de los Molinos 49 4A', 'Campo de Criptana', 'Ciudad Real', '673198654', 'gabrielgarciamarquez@gmail.com');

CREATE TABLE IF NOT EXISTS users(
    userId INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR (20),
    password VARCHAR (20),
    email VARCHAR (30),
    role VARCHAR (20)
);

INSERT INTO users (username, password, email, role)
VALUES
('PedroCalvo', '1234567890', 'pedrojcalvo@gmail.com', 'admin'),
('JoseGisbert', '0987654321', 'josegisbert@gmail.com', 'admin'),
('El Barce', '1234123412', 'elbarce@gmail.com', 'empleado');

CREATE TABLE IF NOT EXISTS materiales(
    id INT PRIMARY KEY AUTO_INCREMENT,
    referencia VARCHAR (50),
    marca VARCHAR (50),
    descripcion VARCHAR (50),
    pvp DECIMAL (6,2),
    ecotasa VARCHAR (10),
    cantidad INT (6)
);

INSERT INTO materiales (referencia, marca, descripcion, pvp, ecotasa, cantidad)
VALUES
('10950 ABR', 'EFAPEL', 'ADAPT MODULAR Q45 P/CANALES C/TAPA L75 BLANCO', '1,45', 'Si', '124'),
('90608 TIS', 'EFAPEL', 'TECLA INT. BIPOLAR GRIS', '3,35', 'No', '200'),
('10295 RBR', 'EFAPEL', 'TOPE P/CANAL 180X50 BLANCO', '2,28', 'No', '34'),
('90605 TAL', 'EFAPEL', 'TECLA SIMPLE CON SIMBOLO DE CAMPANA ALUMINIO', '3,35', 'Si', '90');

-- SOURCE C:/Users/34744/Desktop/Proyecto TFC/manager/gisbetBanyo_DB.sql;