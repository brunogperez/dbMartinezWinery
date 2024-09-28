CREATE SCHEMA `martinez_winery` ;

USE martinez_winery;

-- Creamos primero las tablas padre que no poseen claves foraneas

-- Tabla de categorías
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	category_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    grape_variety VARCHAR(30) NOT NULL, 
    description VARCHAR(200)
	);
    
-- Tabla de Roles de empleados
DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
	role_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
	);
    
-- Tabla de años de productos
DROP TABLE IF EXISTS years;
CREATE TABLE years (
	year_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL
	);
    
-- Tabla de zonas
DROP TABLE IF EXISTS locations;
CREATE TABLE locations (
	location_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL 
	);
    
-- Tabla de estados de pedidos
DROP TABLE IF EXISTS status;
CREATE TABLE status (
	status_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
	);
    
-- Creamos posteriormente las tablas hijo que poseen las claves foráneas que se referencian a las tablas padre. 

-- Tabla de Proveedores
DROP TABLE IF EXISTS providers;
CREATE TABLE providers (
	provider_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY(location_id) REFERENCES locations(location_id)
    );
    
-- Tabla de Productos
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    description VARCHAR(300),
    stock INT,
    price DECIMAL(10,2) NOT NULL,
    bottle_size ENUM( '375ml', '750ml', '1500ml'),
    category_id INT NOT NULL,
    year_id INT NOT NULL,
    provider_id INT NOT NULL,
    FOREIGN KEY(provider_id) REFERENCES providers(provider_id),
    FOREIGN KEY(year_id) REFERENCES years(year_id),
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
    );
    
-- Tabla de Clientes
DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
	client_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    dni VARCHAR(15) NOT NULL,
    phone_number VARCHAR(20) NOT NULL, 
    location_id INT NOT NULL,
    FOREIGN KEY(location_id) REFERENCES locations(location_id)
    );
    
-- Tabla de Empleados
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
	employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
    dni VARCHAR(15) NOT NULL,
    phone_number VARCHAR(20) NOT NULL, 
    role_id INT NOT NULL,
    FOREIGN KEY(role_id) REFERENCES roles(role_id)
    );					
    
-- Tabla de Pedidos
DROP TABLE IF EXISTS orders;
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
DROP TABLE IF EXISTS orders_detail;
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


-- Vista de ventas por zona
CREATE VIEW sales_by_location AS
SELECT 
    l.name, 
    SUM(o.amount) AS total_sales
FROM clients c
JOIN locations l ON c.location_id = l.id
JOIN orders o ON c.id = o.client_id
GROUP BY l.name
ORDER BY total_sales DESC;


-- Declaración de funciones para la DB

-- Función para obtener el precio total de un pedido
DROP FUNCTION IF EXISTS GetTotalPrice;
DELIMITER //
CREATE FUNCTION GetTotalPrice(order_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_price DECIMAL(10, 2);
    
    SELECT SUM(p.price * o.quantity) INTO total_price
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    WHERE o.order_id = order_id;
    
    RETURN total_price;
END;
//


-- Declaración de Stored Procedures

-- Stored Procedure para obtener las ordenes de un cliente específico
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

-- Stored Procedure para obtener los empleados de un sector en especpifico
	CREATE PROCEDURE GetSectorEmployees(IN role VARCHAR(30))
    BEGIN
		SELECT
			e.name,
            r.role
		FROM employees e
        JOIN roles r ON e.role = r.role
        WHERE r.role = role;
    
    END;

CALL GetSectorEmployees('role de los empleados');

-- Stored Procedure para actualizar el rol de un empleado 
	CREATE PROCEDURE UpdateRoleEmployee(IN EmployeeID INT, IN NewRoleID INT)
    BEGIN
		UPDATE employees SET role = NewRoleID
        WHERE employee_id = EmployeeID
    END;

CALL UpdateRoleEmployee('ID del eompleado', 'Nuevo rol');

-- Stored Procedure obtener la lista de productos ordenados por un campo en especifico 
	CREATE PROCEDURE GetProductsInOrder(IN field CHAR(30))
    BEGIN
		IF field <> '' THEN 
			SET @products_order = CONCAT('ORDER BY', field);
		ELSE
			SET @products_order = '';
		END IF;
        
        SET @clause = CONCAT('SELECT * FROM products ', @products_order);
        PREPARE runQUERY FROM @clause;
        EXECUTE runQUERY;
        DEALLOCATE PREPARE runQUERY;
    END;

CALL GetProductsInOrder('CAMPO');



-- Creación de triggers para la DB


-- Trigger para auditar cuando se actualice un registro de la tabla de empleados

-- Primero tenemos que definir la nueva estructura de la tabla de auditorias.
CREATE TABLE employee_audit (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    accion VARCHAR(50),
    insert_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha en que se inserta la acción
    created_by VARCHAR(100), -- Usuario que realizó la acción
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Última fecha de actualización
    last_updated_by VARCHAR(100) -- Usuario que realizó la última actualización
);

-- Creamos el trigger 
CREATE TRIGGER after_update_employee
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit (
        employee_id, accion, insert_date, created_by, last_update, last_updated_by
    )
    VALUES (
        NEW.id, 
        'UPDATE', 
        OLD.insert_date,  -- Mantiene la fecha original de inserción
        OLD.created_by,   -- Mantiene el usuario que realizó la creación
        CURRENT_TIMESTAMP, -- Fecha y hora de la última actualización
        USER() -- Usuario que realizó la actualización
    );
END;


-- Trigger para auditar cuando se actualice un registro de la tabla de empleados


-- Primero tenemos que definir la nueva estructura de la tabla de auditoría de productos.
CREATE TABLE auditoria_productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT, -- ID del producto que fue actualizado
    accion VARCHAR(50), -- Acción realizada ('UPDATE')
    old_price DECIMAL(10, 2), -- Precio anterior
    new_price DECIMAL(10, 2), -- Precio nuevo
    insert_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de la actualización
    updated_by VARCHAR(100) -- Usuario que realizó la actualización
);

-- Creamos el trigger 
CREATE TRIGGER after_update_products
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    -- Solo registrar si el precio ha cambiado
    IF OLD.price != NEW.price THEN
        INSERT INTO auditoria_productos (
            product_id, accion, old_price, new_price, insert_date, updated_by
        )
        VALUES (
            NEW.id, 
            'UPDATE', 
            OLD.price, -- Precio anterior
            NEW.price, -- Nuevo precio
            CURRENT_TIMESTAMP, 
            USER() -- Usuario que realizó la actualización
        );
    END IF;
END;


-- Trigger para auditar cuando el stock de un producto caiga por debajo de 5.


-- Primero tenemos que definir la nueva estructura de la tabla de auditoría de stock.
CREATE TABLE low_stock_audit (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,  -- ID del producto
    current_stock INT, -- Stock actual del producto
    audit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Fecha de la auditoría
    action VARCHAR(50), o de acción (e.g., 'LOW STOCK')
    recorded_by VARCHAR(100) -- Usuario que realizó la acción
);


CREATE TRIGGER after_update_product_stock
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    -- Verifica si el stock actual es menor al umbral (por ejemplo, 5)
    IF NEW.stock < 5 THEN
        INSERT INTO low_stock_audit (
            product_id, current_stock, audit_date, action, recorded_by
        )
        VALUES (
            NEW.id, 
            NEW.stock, -- Stock actual
            CURRENT_TIMESTAMP, 
            'LOW STOCK', 
            USER() -- Usuario que realizó la actualización
        );
    END IF;
END;

-- ARREGLAR LOS NAMES DE LAS COLUMNAS DE TODAS LAS TABLAS DE AUDITORIA


