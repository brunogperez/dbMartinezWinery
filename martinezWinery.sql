CREATE SCHEMA `martinez_winery`;

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
	order_date DATE NOT NULL,
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

-- Vista para observar la cantidad total de pedidos de los clientes 
CREATE OR REPLACE VIEW ClientOrderCount AS
SELECT c.client_id,
       c.name,
       COUNT(o.order_id) AS total_orders
FROM clients c
LEFT JOIN orders o ON c.client_id = o.client_id
GROUP BY c.client_id , c.name 
ORDER BY total_orders DESC;


-- Vista para observar los productos con poco stock
CREATE OR REPLACE VIEW ProductsWithLowStock AS
SELECT product_id,
       name,
       stock
FROM products
WHERE stock <= 10;


-- Vista de stock de productos por marca, categoría y año
CREATE OR REPLACE VIEW StockByBrandAndYear AS
SELECT p.year_id,
       b.name,
       SUM(p.stock) AS total_stock
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN providers b ON p.provider_id = b.provider_id
GROUP BY p.year_id, b.name
ORDER BY p.year_id DESC;


-- Vista de pedidos incompletos
CREATE OR REPLACE VIEW Incomplete_Orders AS
SELECT o.order_id,
       o.client_id,
       o.order_date
FROM orders o
WHERE o.status_id = 1;


-- Vista de ventas por zona
CREATE OR REPLACE VIEW sales_by_location AS
SELECT 
    l.name, 
    SUM(o.amount) AS total_sales
FROM clients c
JOIN locations l ON c.location_id = l.location_id
JOIN orders o ON c.client_id = o.client_id
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
    FROM orders_detail o
    JOIN products p ON o.product_id = p.product_id
    WHERE o.order_id = order_id;
    
    RETURN total_price;
END;
//
-- select martinez_winery.GetTotalPrice(2);

-- Función para obtener el producto mas vendido
DROP FUNCTION IF EXISTS GetMostSoldProduct;
DELIMITER //
CREATE FUNCTION GetMostSoldProduct()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE most_sold_product_id INT;

    SELECT od.product_id INTO most_sold_product_id
    FROM orders_detail od
    GROUP BY od.product_id
    ORDER BY SUM(od.quantity) DESC
    LIMIT 1;

    RETURN most_sold_product_id;
END;
//
-- select martinez_winery.GetMostSoldProduct();


-- Declaración de Stored Procedures

-- Stored Procedure para obtener las ordenes de un cliente específico
DELIMITER //

CREATE PROCEDURE GetClientOrders(IN in_clientID INT)
BEGIN
    SELECT 
		o.order_id,
		c.name
    FROM orders o
    JOIN clients c ON o.client_id = c.client_id
    WHERE o.client_id = in_clientID;
END  //

DELIMITER ;

-- CALL GetClientOrders("client_id");
-- CALL GetClientOrders(4);

-- Stored Procedure para obtener los empleados de un sector en especpifico
DELIMITER //

CREATE PROCEDURE GetSectorEmployees(IN in_role VARCHAR(30))
    BEGIN
		SELECT
			e.name,
            r.role_id
		FROM employees e
        JOIN roles r ON e.role_id = r.role_id
        WHERE r.role_id = in_role;
END //

DELIMITER ;
    
-- CALL GetSectorEmployees("role_id");
-- CALL GetSectorEmployees(5);


-- Stored Procedure para actualizar el rol de un empleado 
DELIMITER //

CREATE PROCEDURE UpdateRoleEmployee(IN EmployeeID INT, IN NewRoleID INT)
    BEGIN
		UPDATE employees SET role_id = NewRoleID
        WHERE employee_id = EmployeeID;
END // 
    
DELIMITER ;

-- SELECT * FROM employees WHERE employee_id= 1;
-- UpdateRoleEmployee('ID del eompleado', 'Nuevo rol');
-- CALL UpdateRoleEmployee(1, 1);
-- SELECT * FROM employees WHERE employee_id= 1;



-- Stored Procedure obtener la lista de productos ordenados por un campo en especifico 
DELIMITER //

CREATE PROCEDURE GetProductsInOrder(IN field VARCHAR(30))
BEGIN
	IF field <> '' THEN 
		SET @products_order = CONCAT('ORDER BY ', field);
	ELSE
		SET @products_order = '';
	END IF;
        
	SET @clause = CONCAT('SELECT * FROM products ', @products_order);
	PREPARE runQUERY FROM @clause;
	EXECUTE runQUERY;
	DEALLOCATE PREPARE runQUERY;
END //

DELIMITER ;


-- CALL GetProductsInOrder('CAMPO');
-- CALL GetProductsInOrder('year_id');



-- Creación de triggers para la DB


-- Trigger para auditar cuando se actualice un registro de la tabla de empleados

-- Primero tenemos que definir la nueva estructura de la tabla de auditorias.
CREATE TABLE employee_audit (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    accion VARCHAR(50),
    insert_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha en que se inserta la acción
    created_by VARCHAR(100), -- Usuario que realizó la acción
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Última fecha de actualización
    last_updated_by VARCHAR(100) -- Usuario que realizó la última actualización
);

-- Creamos el trigger 
DELIMITER //
CREATE TRIGGER after_update_employee
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit (
        employee_id, accion, last_update, last_updated_by
    )
    VALUES (
        NEW.employee_id, 
        'UPDATE', 
        CURRENT_TIMESTAMP, -- Fecha y hora de la última actualización
        USER() -- Usuario que realizó la actualización
    );
END // 
DELIMITER ;

-- REALIZAMOS UNA PRUEBA 
-- SELECT * FROM  employees;
-- SELECT * FROM employee_audit;
-- UPDATE employees SET name = 'Bruno Perez' WHERE employee_id = 1;


-- Trigger para auditar cuando se actualice un registro de la tabla de empleados

-- Primero tenemos que definir la nueva estructura de la tabla de auditoría de productos.
CREATE TABLE audit_products (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT, -- ID del producto que fue actualizado
    accion VARCHAR(50), -- Acción realizada ('UPDATE')
    old_price DECIMAL(10, 2), -- Precio anterior
    new_price DECIMAL(10, 2), -- Precio nuevo
    insert_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de la actualización
    updated_by VARCHAR(100) -- Usuario que realizó la actualización
);

-- Creamos el trigger 
DELIMITER //
DROP TRIGGER IF EXISTS after_update_products;
CREATE TRIGGER after_update_products
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    -- Solo registrar si el precio ha cambiado
    IF OLD.price != NEW.price THEN
        INSERT INTO audit_products (
            product_id, accion, old_price, new_price, insert_date, updated_by
        )
        VALUES (
            NEW.product_id, 
            'UPDATE', 
            OLD.price, -- Precio anterior
            NEW.price, -- Nuevo precio
            CURRENT_TIMESTAMP, 
            USER() -- Usuario que realizó la actualización
        );
    END IF;
END //
DELIMITER ;

-- REALIZAMOS UNA PRUEBA
-- SELECT * FROM products WHERE product_id = 1 ;
-- UPDATE products SET price = 120 WHERE product_id = 1;
-- SELECT * FROM audit_products;



-- Trigger para auditar cuando el stock de un producto caiga por debajo de 5.


-- Primero tenemos que definir la nueva estructura de la tabla de auditoría de stock.

CREATE TABLE low_stock_audit (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,  -- ID del producto
    current_stock INT, -- Stock actual del producto
    audit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Fecha de la auditoría
    action VARCHAR(50), -- o de acción (e.g., 'LOW STOCK')
    recorded_by VARCHAR(100) -- Usuario que realizó la acción
);

DELIMITER //
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
            NEW.product_id, 
            NEW.stock, -- Stock actual
            CURRENT_TIMESTAMP, 
            'LOW STOCK', 
            USER() -- Usuario que realizó la actualización
        );
    END IF;
END //
DELIMITER ;
