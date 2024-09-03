CREATE SCHEMA `martinez_winery` ;

USE martinez_winery;

-- Creamos primero las tablas padre que no poseen claves foraneas

-- Tabla de categorías
CREATE TABLE categories (
	category_id  INT NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    description VARCHAR(100)
	);
    
    -- Tabla de Roles de empleados
CREATE TABLE roles (
	role_id  INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
	);
    
-- Tabla de años de productos
CREATE TABLE years (
	year_id  INT NOT NULL PRIMARY KEY,
    year INT NOT NULL
	);
    
-- Tabla de zonas
CREATE TABLE locations (
	location_id  INT NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL 
	);
    
-- Tabla de estados de pedidos
CREATE TABLE status (
	status_id  INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
	);
    
-- Creamos posteriormente las tablas hijo que poseen las claves foraneas que se referencian a las tablas padre. 

-- Tabla de Productos
CREATE TABLE products (
	product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    description VARCHAR(100),
    stock INT,
    price DECIMAL NOT NULL,
    category_id INT NOT NULL,
    year_id INT NOT NULL,
    FOREIGN KEY(year_id) REFERENCES years(year_id),
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
    );
    
-- Tabla de Clientes
CREATE TABLE clients (
	client_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    DNI INT NOT NULL,
    phone_number INT NOT NULL, 
    location_id INT NOT NULL,
    FOREIGN KEY(location_id) REFERENCES locations(location_id)
    );
    
-- Tabla de Proveedores
CREATE TABLE providers (
	provider_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number INT NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY(location_id) REFERENCES locations(location_id)
    );

-- Tabla de Empleados
CREATE TABLE employees (
	employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    DNI INT NOT NULL,
    phone_number INT NOT NULL, 
    role_id INT NOT NULL,
    FOREIGN KEY(role_id) REFERENCES roles(role_id)
    );
    
-- Tabla de Pedidos
CREATE TABLE orders (
	order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	order_date DATETIME NOT NULL,
    client_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY(client_id) REFERENCES clients(client_id),
    FOREIGN KEY(status_id) REFERENCES status(status_id)
    );


	