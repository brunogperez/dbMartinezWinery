# Proyecto Final SQL  - Perez Bruno 

## Introducción

  Martinez Winery es una distribuidora especializada en ofrecer una selección exclusiva de vinos de alta calidad, cuidadosamente seleccionados de distintas regiones y variedades. Nuestro enfoque se centra en brindar un servicio personalizado, atendiendo a los gustos y preferencias de cada cliente. A través de alianzas con proveedores confiables y un control riguroso del inventario, aseguramos la frescura y disponibilidad de nuestros productos. Además, nuestro objetivo es ofrecer una experiencia de compra fluida y satisfactoria, tanto en nuestra sucursal física como en futuras expansiones.

## Objetivo 

  El propósito de este proyecto es demostrar la aplicación de SQL para la gestión y análisis de datos de una distribuidora de vinos. A lo largo de este proyecto, se explorarán las diversas funcionalidades y características de SQL, incluyendo la creación y manipulación de bases de datos, la ejecución de consultas complejas, la integración de datos desde múltiples fuentes, y la implementación de buenas prácticas de diseño de bases de datos.

## Diagrama entidad - relación

![DiagramaER](https://github.com/user-attachments/assets/902e95ff-0b15-434b-9520-4063422432e5)

https://miro.com/app/board/uXjVKsYFPKQ=/

## Estructura de la DB

  La DB está diseñada para gestionar eficientemente las operaciones clave de la distribuidora. Incluye entidades que organizan y controlan la información relacionada con clientes, proveedores, empleados, categorías de productos, zonas de distribución, roles, pedidos, detalles de los pedidos y estados de preparación de los pedidos permitiendo un flujo de datos preciso y fácil de administrar. Esta estructura flexible garantiza la escalabilidad para futuras expansiones del negocio.
  A continuación se encuentran las tablas principales con sus columnas explicadas.


![tablaProducts](https://github.com/user-attachments/assets/846cea4e-c526-43b6-a1d6-4b6d4bfcece8)
![tablaEmployees](https://github.com/user-attachments/assets/fa8c4349-61ac-4aef-9a09-7076bdc1aa03)
![tablaClients](https://github.com/user-attachments/assets/5620812a-9190-47f5-bbcd-08412632c801)
![tablaProviders](https://github.com/user-attachments/assets/505cb3ae-f804-4983-afc8-41e8ad133831)
![tablaOrders](https://github.com/user-attachments/assets/61b5af5d-518c-4e36-8607-92f02cadfa61)
![tablaOrdersDetail](https://github.com/user-attachments/assets/65022a5f-4a93-40ce-8322-9fd1ee1a2354)
![tablaCategories](https://github.com/user-attachments/assets/0017ff37-0c2a-4a0d-8ddc-f00662dcd545)
![tablaLocations](https://github.com/user-attachments/assets/c2fa4b02-b3a0-4781-9fc0-9b6d5169f7a2)
![tablaRoles](https://github.com/user-attachments/assets/3be784ca-5fe4-4f88-b06b-93fd3e23fe9e)
![tablaYears](https://github.com/user-attachments/assets/a6aaef82-741f-4db4-b946-b855ad524b73)
![tablaStatus](https://github.com/user-attachments/assets/7af47f93-0159-45a0-9edd-bc4958cfb554)


## VISTAS PARA INFORMES


* Vista para observar la cantidad total de pedidos de los clientes
  
![clientOrderCount](https://github.com/user-attachments/assets/4b877fd4-e224-4b90-8e35-28e2a463558d)

  Muestra la cantidad total de pedidos realizados por cada cliente. Utiliza una unión LEFT JOIN entre las tablas de clientes y pedidos, de modo que se incluyan todos los clientes, incluso aquellos que no hayan hecho ningún pedido. Luego, agrupa los resultados por cliente y los ordena de forma descendente según el número total de pedidos (total_orders).
  
  El fin de esta vista es controlar la actividad de los clientes para para próximas lanzamientos de ofertas especiales.

* Vista para observar los productos con poco stock
  
![productsWithLowStock](https://github.com/user-attachments/assets/9ec891bc-1ac4-4e3e-bdd7-9f9276fbc274)

  Muestra todos los productos cuyo stock es igual o inferior a 10. Selecciona los campos de product_id, name y stock de la tabla products y filtra aquellos productos con bajo inventario.
  
  El fin de la misma es generar un informe de productos con bajo stock, permitiendo al equipo de compras o logística identificar rápidamente los artículos que necesitan ser reabastecidos para evitar rupturas de stock.

* Vista de pedidos incompletos
  
![incompleteOrders](https://github.com/user-attachments/assets/e9fc9363-13aa-4670-82a7-88ebde5cd0f7)

  Muestra todos los pedidos que están marcados como incompletos, filtrando aquellos con un status_id igual a 1. Selecciona los campos order_id, client_id y order_date de la tabla de pedidos.
  
  Esta view se utiliza para generar un informe de pedidos incompletos, permitiendo al equipo de atención al cliente o gestión de pedidos identificar rápidamente los pedidos que necesitan atención para ser completados lo antes posible. 

* Vista de ventas por zona
  
![salesByLocation](https://github.com/user-attachments/assets/7f28a261-2032-46b1-8429-6631c93f8bde)

  Muestra las ventas totales agrupadas por zona de venta. Selecciona el nombre de la ubicación y la suma de los montos de los pedidos (total_sales). Utiliza uniones entre las tablas de clientes, ubicaciones y pedidos, y organiza los resultados de manera descendente según el total de ventas por cada zona.
  
  El fin de esta view es generar un informe de ventas por ubicación, lo que permite a la empresa analizar el desempeño de ventas en diferentes áreas geográficas. El informe podría ayudar en la identificación de las ubicaciones con mayores y menores ventas, permitiendo realizar estrategias de marketing o ajustes operativos específicos para mejorar las ventas en las áreas menos rentables.


## FUNCIONES

1. GetTotalPrice

![fnGetTotalPrice](https://github.com/user-attachments/assets/f7be8826-fa0d-4303-ba1c-24c384d17ea3)

  Esta función calcula el precio total de un pedido específico. Recibe el ID del pedido como parámetro y utiliza una consulta que multiplica el precio de cada producto por la cantidad pedida, sumando los resultados para obtener el precio total. Esta función es útil para generar informes de ventas y para la gestión financiera de la distribuidora.

2. GetMostSoldProduct
   
![fnGetMostSoldProduct](https://github.com/user-attachments/assets/b1476b06-f62c-4044-84f6-11805c6d3696)

  Esta función identifica el producto que ha sido vendido en mayor cantidad. No requiere parámetros de entrada y realiza una consulta que agrupa los detalles de los pedidos por ID de producto, ordenando los resultados por la suma de las cantidades vendidas. Esta información es valiosa para la toma de decisiones de inventario y marketing, ya que permite a la empresa enfocarse en los productos más populares.

## STORED PROCEDURES

1. GetClientOrders

![SPGetClientOrders](https://github.com/user-attachments/assets/c9ee239a-318b-4e7d-ba9d-296e01988db7)

  Este stored procedure obtiene todas las órdenes realizadas por un cliente específico. Recibe como parámetro el ID del cliente y realiza una consulta que une las tablas de pedidos y clientes para devolver el ID de la orden y el nombre del cliente. Es útil para el seguimiento de las compras de un cliente y la gestión de relaciones con los mismos.

2. GetSectorEmployees

![SPGetSectorEmployees](https://github.com/user-attachments/assets/9d4525ae-e022-46d8-b056-123103b3e454)

  Este stored procedure devuelve la lista de empleados que pertenecen a un rol específico dentro de la empresa. Toma como entrada el ID del rol y ejecuta una consulta que une las tablas de empleados y roles, mostrando el nombre del empleado y su rol. Es útil para la administración de recursos humanos y para entender la distribución de roles dentro de la organización.

3. UpdateRoleEmployee

![SPUpdateRoleEmployee](https://github.com/user-attachments/assets/e4dc2829-1ac9-4550-a423-ff124d193278)

  Este stored procedure permite actualizar el rol de un empleado en la base de datos. Requiere como parámetros el ID del empleado y el nuevo ID del rol que se le asignará. La ejecución de esta función modifica el registro correspondiente en la tabla de empleados. Es fundamental para la gestión de personal y la estructura organizativa, permitiendo cambios de roles conforme a las necesidades de la empresa.

4. GetProductsInOrder

![SPGetProductsInOrder](https://github.com/user-attachments/assets/0aa2ebcb-da03-465d-b992-62afca73a09e)

  Este stored procedure obtiene una lista de productos ordenados según un campo específico, el cual se proporciona como parámetro. Si se especifica un campo, construye dinámicamente una consulta SQL para ordenar los resultados de la tabla de productos según ese campo. Esta flexibilidad es útil para generar reportes y análisis según diferentes criterios de interés, permitiendo al usuario personalizar la forma en que se visualizan los productos.

## TRIGGERS

1. Trigger para auditar actualizaciones en la tabla de empleados (after_update_employee)

![triggerAfterEmployeeAudit](https://github.com/user-attachments/assets/a5ed058e-d761-4ed6-881f-4bbda1e1653a)

Este trigger se activa después de que un registro en la tabla employees es actualizado. Se inserta un nuevo registro en la tabla employee_audit para registrar la acción de actualización realizada en los datos del empleado.


2. Trigger para auditar cambios en los precios de los productos (after_update_products)

![triggerAfterUpdateProducts](https://github.com/user-attachments/assets/f804cd2c-33cd-4fb5-bb10-0b2ab4fba4a5)

Este trigger se activa después de que un registro en la tabla products es actualizado. Si el precio de un producto cambia, se inserta un nuevo registro en la tabla audit_products que documenta el cambio de precio.

3. Trigger para auditar bajo stock de productos (after_update_product_stock)

![triggerAfterUpdateProductsStock](https://github.com/user-attachments/assets/a4786ff0-5a1a-4d3a-8d32-844f7fb65a50)

Este trigger se activa después de que un registro en la tabla products es actualizado. Si el stock de un producto baja por debajo de 5 unidades, se inserta un registro en la tabla low_stock_audit para alertar sobre la situación de bajo stock.

## Construido con 🛠️

Mi proyecto fue construido utilizando las siguientes herramientas: 
  
  * Miro.com -- Ejecución del Diagrama E-R
  * MySQL - Workbench -- Entorno visual utilizado para el desarrollo de todos los scripts referidos a la DB
  * https://www.mockaroo.com/ -- Generación de los inserts y de esta manera poblar la DB con datos ficticios.
  * ChatGPT -- Generación de textos 

## Instrucciones

  * Descargar los archivos .sql
  * Ejecutar el archivo martinezWinery.sql que contiene todos scripts para la creación del schema, las tablas, funciones vistas y triggers de la DB.
  * Ejecutar el archivo martinezWinery_insertData.sql que contiene todas las sentencias INSERT para cada tabla.

## FUTURAS MEJORAS
  
  * Si en el futuro se añaden más sucursales, se podría agregar una tabla Sucursales y vincular el inventario, ventas y pedidos a cada sucursal.
  * Creación de nuevas vistas para facilitar el acceso a la información.
  * Ampliar la estructura de la base de datos.
  * Fortalecer las medidas de seguridad de la base de datos.
  * Crear un sector de RRHH que le permita utilizar determinadas vistas, para selecionar y modificar el rendimiento de los empleados.
  * Crear procedimientos almacenados mas complejos para mejorar la base de datos.
  * Agregar nuevos Triggers para auditar mayor cantidad de datos. 


## Autor ✒️
**Bruno Perez** 

