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
    provider_id INT,
    FOREIGN KEY(provider_id) REFERENCES providers(provider_id),
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
    
-- Tabla de detalle de Pedido
CREATE TABLE orders_detail (
	orderdetail_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	order_id INT NOT NULL,
    product_id INT NOT NULL, 
    quantity INT,
    amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(product_id) REFERENCES products(product_id),
    FOREIGN KEY(order_id) REFERENCES orders(order_id)
    );
    	
        
        
-- Creación de vistas para uso en la DB

-- Vista para observar la cantidad de pedidos de un cliente en específico
CREATE OR REPLACE VIEW ClientOrderCount AS
SELECT c.client_id,
       c.name,
       COUNT(o.order_id) AS total_orders
FROM clients c
LEFT JOIN orders o ON c.client_id = o.client_id
GROUP BY c.client_id, c.name;


-- Vista para observar los productos con poco stock
CREATE VIEW ProductsWithLowStock AS
SELECT product_id,
       name,
       stock
FROM products
WHERE stock <= 10;

-- Vista de stock de productos por marca, categoría y año
CREATE VIEW StockByBrandCategoryAndYear AS
SELECT p.year,
       b.name,
       c.name,
       SUM(p.stock) AS total_stock
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN providers b ON p.providers_id = b.provider_id
GROUP BY p.year, b.name, c.name
ORDER BY p.year, b.name, c.name;

-- Vista de pedidos incompletos

CREATE VIEW IncompleteOrders AS
SELECT o.order_id,
       o.client_id,
       o.order_date
FROM orders o
WHERE o.status = 'pending';



-- Declaración de funciones para la DB

-- Función para obtener el precio total de un pedido
DROP FUNCTION IF EXISTS GetTotalPrice;
DELIMITER //
CREATE FUNCTION GetTotalPrice(order_id INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total_price DECIMAL(10, 2);
    
    SELECT SUM(p.price * o.quantity) INTO total_price
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    WHERE o.order_id = order_id;
    
    RETURN total_price;
END;
//


-- Declaración de Store Procedures


-- StoreProcedure para obtener las ordenes de un cliente específico
CREATE PROCEDURE GetClientOrders(IN clientID INT)
BEGIN
    SELECT 
		o.order_id,
		c.name
    FROM orders o
    JOIN clients c ON o.client_id = c.client_id
    WHERE o.client_id = clientID;
END;

CALL GetClientOrders('ID DEL CLIENTE');

