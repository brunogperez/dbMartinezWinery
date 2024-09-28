# Proyecto Final SQL  - Perez Bruno 

## Introducción

Martinez Winery es una distribuidora especializada en ofrecer una selección exclusiva de vinos de alta calidad, cuidadosamente seleccionados de distintas regiones y variedades. Nuestro enfoque se centra en brindar un servicio personalizado, atendiendo a los gustos y preferencias de cada cliente. A través de alianzas con proveedores confiables y un control riguroso del inventario, aseguramos la frescura y disponibilidad de nuestros productos. Además, nuestro objetivo es ofrecer una experiencia de compra fluida y satisfactoria, tanto en nuestra sucursal física como en futuras expansiones.

## Objetivo 

El propósito de este proyecto es demostrar la aplicación de SQL para la gestión y análisis de datos de una distribuidora de vinos. A lo largo de este proyecto, se explorarán las diversas funcionalidades y características de SQL, incluyendo la creación y manipulación de bases de datos, la ejecución de consultas complejas, la integración de datos desde múltiples fuentes, y la implementación de buenas prácticas de diseño de bases de datos.

## Diagrama entidad - relación

https://miro.com/app/board/uXjVKsYFPKQ=/

## Estructura de la DB

La DB está diseñada para gestionar eficientemente las operaciones clave de la distribuidora. Incluye entidades que organizan y controlan la información relacionada con clientes, proveedores, empleados, categorías de productos, zonas de distribución, roles, pedidos, detalles de los pedidos y estados de preparación de los pedidos permitiendo un flujo de datos preciso y fácil de administrar. Esta estructura flexible garantiza la escalabilidad para futuras expansiones del negocio.
A continuación se encuentran las tablas principales con sus columnas explicadas.


![tablaProducts](https://github.com/user-attachments/assets/c03558c3-b2e3-4c71-ab65-34029d0f5193)
![tablaProviders](https://github.com/user-attachments/assets/01004e11-2602-4670-9d17-440a3cfca3b9)
![tablaClients](https://github.com/user-attachments/assets/224e2082-ae71-4e61-a8c3-3ab21d9e16a8)
![tablaOrders](https://github.com/user-attachments/assets/55e179dc-9165-4431-8591-cae567ae0105)
![tablaCategories](https://github.com/user-attachments/assets/8f372c4d-5fae-4a4a-9035-31a14732424b)
![tablaLocations](https://github.com/user-attachments/assets/5008d0b8-7ea9-480c-a909-1ce812ac2b69)
![tablaRoles](https://github.com/user-attachments/assets/50921896-2f69-49fb-9a7b-ea51c6480740)
![tablaStatus](https://github.com/user-attachments/assets/44d5aa12-e7e0-4985-b9d8-898a51bfef63)
![tablaYears](https://github.com/user-attachments/assets/500f495e-4292-41aa-9309-1b34c34e7df7)


## VISTAS PARA INFORMES


* Vista para observar la cantidad total de pedidos de los clientes 
![clientOrderCount](https://github.com/user-attachments/assets/4b877fd4-e224-4b90-8e35-28e2a463558d)

Muestra la cantidad total de pedidos realizados por cada cliente. Utiliza una unión LEFT JOIN entre las tablas de clientes y pedidos, de modo que se incluyan todos los clientes, incluso aquellos que no hayan hecho ningún pedido. Luego, agrupa los resultados por cliente y los ordena de forma descendente según el número total de pedidos (total_orders).

El fin de esta vista es controlar la actividad de los clientes para para próximas lanzamientos de ofertas especiales

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

2 FUNCIONES 

## STORED PROCEDURES

2 SP

## TRIGGERS

2 TRIGGERS 

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



## Autor ✒️
**Bruno Perez** 

