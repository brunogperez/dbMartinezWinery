USE martinez_winery;

-- Tabla de Productos
CREATE TABLE products (
	product_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    description VARCHAR(100),
    stock INT,
    price DECIMAL NOT NULL,
    category_ID INT NOT NULL, 
    year_ID INT NOT NULL);
    
-- Tabla de Clientes
CREATE TABLE clients (
	client_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    DNI INT NOT NULL,
    phone_number INT NOT NULL, 
    location_ID INT NOT NULL
    );
    
-- Tabla de Proveedores
CREATE TABLE providers (
	provider_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number INT NOT NULL, 
    location_ID INT NOT NULL
    );

-- Tabla de Empleados
CREATE TABLE employees (
	employee_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    DNI INT NOT NULL,
    phone_number INT NOT NULL, 
    role_ID INT NOT NULL
    );
    
-- Tabla de Roles de empleados
CREATE TABLE roles (
	role_ID  INT PRIMARY KEY,
    name VARCHAR(30),
    FOREIGN KEY(role_ID) REFERENCES employees(role_ID)
);

-- Tabla de Pedidos
CREATE TABLE orders (
	order_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	order_date DATETIME NOT NULL,
    client_ID INT NOT NULL,
    amount DECIMAL NOT NULL,
    status_ID INT NOT NULL
    );
    
    
	