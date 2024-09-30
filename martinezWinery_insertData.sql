USE martinez_winery;

-- Scripts para inserción de datos en las tablas


-- Script para inserción de datos en tabla Categories

insert into categories (category_id, name, grape_variety, description) values (1, 'Sparkling', 'Syrah', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.');
insert into categories (category_id, name, grape_variety, description) values (2, 'Rose', 'Zinfandel', 'Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.');
insert into categories (category_id, name, grape_variety, description) values (3, 'Red', 'Sauvignon Blanc', 'qui dolorem ipsum quia dolor sit amet');
insert into categories (category_id, name, grape_variety, description) values (4, 'White', 'Grenache', 'Et harum quidem rerum facilis est et expedita distinctio.');
insert into categories (category_id, name, grape_variety, description) values (5, 'Rose', 'Chardonnay', 'quis nostrum exercitationem ullam corporis suscipit laboriosam.');
insert into categories (category_id, name, grape_variety, description) values (6, 'Red', 'Malbec', 'qui dolorem ipsum quia dolor sit amet');
insert into categories (category_id, name, grape_variety, description) values (7, 'Red', 'Merlot', 'Similique sunt in culpa qui officia deserunt mollitia animi');
insert into categories (category_id, name, grape_variety, description) values (8, 'Rose', 'Syrah', 'Et harum quidem rerum facilis est et expedita distinctio.');
insert into categories (category_id, name, grape_variety, description) values (9, 'Rose', 'Malbec', 'Neque porro quisquam est');
insert into categories (category_id, name, grape_variety, description) values (10, 'White', 'Syrah', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.');


-- Script para inserción de datos en tabla Roles

insert into roles (role_id, name) values (1, 'Construction Foreman');
insert into roles (role_id, name) values (2, 'Project Manager');
insert into roles (role_id, name) values (3, 'Construction Worker');
insert into roles (role_id, name) values (4, 'Project Manager');
insert into roles (role_id, name) values (5, 'Construction Foreman');
insert into roles (role_id, name) values (6, 'Surveyor');
insert into roles (role_id, name) values (7, 'Construction Worker');


-- Script para inserción de datos en tabla de Years 

insert into years (year_id, year) values (1, 1995);
insert into years (year_id, year) values (2, 2010);
insert into years (year_id, year) values (3, 1997);
insert into years (year_id, year) values (4, 2010);
insert into years (year_id, year) values (5, 1987);
insert into years (year_id, year) values (6, 1996);
insert into years (year_id, year) values (7, 2007);
insert into years (year_id, year) values (8, 1996);
insert into years (year_id, year) values (9, 2004);
insert into years (year_id, year) values (10, 1992);


-- Script para inserción de datos en tabla de Locations 

insert into locations (location_id, name) values (1, 'Namwala');
insert into locations (location_id, name) values (2, 'Mocímboa');
insert into locations (location_id, name) values (3, 'Diré');
insert into locations (location_id, name) values (4, 'Noenoni');
insert into locations (location_id, name) values (5, 'Sunja');
insert into locations (location_id, name) values (6, 'Ai Tu');
insert into locations (location_id, name) values (7, 'Liushi');
insert into locations (location_id, name) values (8, 'Wisznice');
insert into locations (location_id, name) values (9, 'Manding');
insert into locations (location_id, name) values (10, 'Sarandi');


-- Script para inserción de datos en tabla de Status

insert into status (status_id, name) values (1, 'Pendiente');
insert into status (status_id, name) values (2, 'Procesando');
insert into status (status_id, name) values (3, 'Enviado');
insert into status (status_id, name) values (4, 'Entregado');
insert into status (status_id, name) values (5, 'Cancelado');
insert into status (status_id, name) values (6, 'Devolución en proceso');
insert into status (status_id, name) values (7, 'Devuelto');


-- Script para inserción de datos en tabla de Providers

insert into providers (provider_id, name, email, address, phone_number, location_id) values (1, 'Trantow-Daniel', 'adealy0@posterous.com', '6414 Anzinger Circle', '727-364-1803', 7);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (2, 'Fisher Group', 'ocapozzi1@naver.com', '7 Tomscot Hill', '548-153-7312', 7);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (3, 'Kulas Group', 'hblackhall2@si.edu', '74484 Parkside Plaza', '679-996-2838', 8);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (4, 'Gutkowski Inc', 'mwhitecross3@foxnews.com', '6120 Dawn Pass', '275-575-5943', 9);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (5, 'Little-Tremblay', 'tpic4@pinterest.com', '4 Farragut Park', '319-925-0678', 2);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (6, 'Koelpin Inc', 'gaynscombe5@digg.com', '8150 Moose Circle', '254-990-2939', 10);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (7, 'Powlowski Group', 'bbrockie6@squidoo.com', '71 Schurz Pass', '220-898-0308', 5);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (8, 'Grimes-Zboncak', 'mortas7@slashdot.org', '38 Elmside Pass', '224-175-5134', 6);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (9, 'Schuppe-Cruickshank', 'esetford8@ed.gov', '16025 Esch Drive', '992-452-8459', 1);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (10, 'Feeney-Nikolaus', 'kpyett9@pcworld.com', '17 Fieldstone Court', '229-191-4964', 2);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (11, 'Murray, Lowe and Brown', 'lcallwaya@fc2.com', '11 International Center', '922-559-5140', 7);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (12, 'Walter, Paucek and Rau', 'ostareb@g.co', '622 Buell Park', '628-434-7291', 9);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (13, 'Von, Bailey and Marquardt', 'tjohnsonc@bloglovin.com', '31242 Farragut Junction', '309-306-3759', 7);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (14, 'Aufderhar, Funk and Kautzer', 'pparsalld@answers.com', '21 Glacier Hill Hill', '651-856-3145', 10);
insert into providers (provider_id, name, email, address, phone_number, location_id) values (15, 'Harber, Wyman and McGlynn', 'nfowleye@i2i.jp', '417 Gale Point', '775-965-6302', 3);


-- Script para inserción de datos en tabla de Products

insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (1, 'Gibson Inc', 'Duis consequat dui nec nisi volutpat eleifend.', 20, 7827.31, '750ml', 3, 3, 9);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (2, 'Ebert-Frami', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 25, 6073.1, '750ml', 5, 6, 10);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (3, 'McCullough LLC', 'Cras non velit nec nisi vulputate nonummy.', 200, 6007.53, '750ml', 10, 10, 9);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (4, 'Koelpin-Borer', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 10, 12115.13, '1500ml', 7, 1, 10);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (5, 'Ebert, Orn and Beer', 'Phasellus sit amet erat.', 95, 6636.14, '375ml', 8, 4, 2);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (6, 'Schaden-Romaguera', 'Suspendisse potenti.', 25, 14470.52, '750ml', 9, 10, 7);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (7, 'Mosciski-Fahey', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 80, 11244.48, '375ml', 5, 6, 4);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (8, 'Reichert Inc', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 95, 14842.67, '750ml', 1, 10, 8);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (9, 'Hartmann-Rice', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 40, 3468.77, '375ml', 9, 3, 1);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (10, 'Christiansen and Sons', 'Proin risus. Praesent lectus.', 85, 3952.32, '1500ml', 5, 2, 6);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (11, 'Fadel Inc', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 30, 10775.27, '1500ml', 7, 9, 4);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (12, 'Waters and Sons', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 70, 10202.08, '750ml', 2, 3, 5);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (13, 'Kirlin-Russel', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 85, 320.28, '750ml', 2, 8, 2);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (14, 'Grimes Inc', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 110, 14168.0, '750ml', 9, 5, 1);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (15, 'Bins LLC', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 100, 582.27, '750ml', 4, 9, 2);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (16, 'Boehm-Kuhic', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 95, 6222.06, '1500ml', 2, 7, 10);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (17, 'Hoppe, Reichel and Kub', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 50, 10950.79, '750ml', 8, 6, 8);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (18, 'Schneider, Ledner and Bins', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 60, 5373.01, '375ml', 5, 8, 10);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (19, 'Terry, Treutel and Bernhard', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 110, 4115.03, '375ml', 9, 1, 10);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (20, 'Mayer, Turner and Rowe', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 95, 2676.45, '375ml', 6, 4, 6);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (21, 'Wuckert, Koelpin and Hyatt', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 50, 7829.41, '1500ml', 8, 6, 10);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (22, 'Schuppe-Jacobson', 'Duis aliquam convallis nunc.', 10, 2152.86, '750ml', 10, 3, 2);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (23, 'Kirlin Inc', 'Suspendisse accumsan tortor quis turpis. Sed ante.', 70, 1278.99, '1500ml', 9, 1, 1);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (24, 'Wehner-O''Conner', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 40, 4725.65, '1500ml', 7, 5, 5);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (25, 'Swift, Pfannerstill and Runte', 'Morbi non quam nec dui luctus rutrum. Nulla tellus.', 55, 11946.27, '375ml', 7, 4, 5);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (26, 'Lebsack Group', 'Etiam faucibus cursus urna. Ut tellus.', 150, 1248.67, '750ml', 10, 7, 4);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (27, 'Bergstrom, Ferry and Walker', 'Proin eu mi.', 50, 10638.56, '375ml', 3, 8, 5);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (28, 'Lind, Hermiston and Baumbach', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 95, 10226.14, '375ml', 9, 9, 9);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (29, 'Lebsack-Harber', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 10, 8149.3, '375ml', 1, 10, 7);
insert into products (product_id, name, description, stock, price, bottle_size, category_id, year_id, provider_id) values (30, 'Reynolds-Hane', 'Integer a nibh. In quis justo.', 150, 327.01, '1500ml', 1, 6, 9);


-- Script para inserción de datos en tabla de Clients

insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (1, 'Reiko Mansford', 'rmansford0@topsy.com', '66678 Tomscot Terrace', '182-51-0490', '385-140-8809', 10);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (2, 'Berri Stevens', 'bstevens1@feedburner.com', '73 Holmberg Alley', '276-82-7629', '730-253-9729', 5);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (3, 'Kary Leap', 'kleap2@sitemeter.com', '1125 Pine View Road', '375-73-0693', '550-773-9103', 8);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (4, 'Blanca Rudman', 'brudman3@wsj.com', '7 Troy Center', '290-59-8638', '481-620-3039', 6);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (5, 'Royal Duck', 'rduck4@multiply.com', '5784 Hoffman Avenue', '668-58-1750', '291-247-4688', 6);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (6, 'Nadine Arrell', 'narrell5@walmart.com', '548 Gerald Hill', '533-33-4940', '315-663-8290', 6);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (7, 'Sal Garfath', 'sgarfath6@virginia.edu', '31972 Stephen Pass', '691-10-8374', '242-178-0634', 7);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (8, 'Mickie Martschke', 'mmartschke7@123-reg.co.uk', '29 Aberg Avenue', '106-30-9499', '318-888-8548', 1);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (9, 'Kayne Stranahan', 'kstranahan8@purevolume.com', '90 Transport Drive', '161-81-3339', '934-992-9593', 10);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (10, 'Harriett Rushby', 'hrushby9@mysql.com', '116 Westerfield Drive', '223-34-5428', '331-445-0415', 8);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (11, 'Constantina Riddle', 'criddlea@blogspot.com', '9 Bayside Park', '467-05-1855', '535-516-3231', 7);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (12, 'Shermy Teresia', 'steresiab@indiegogo.com', '4 Elmside Alley', '315-20-3947', '175-528-8795', 1);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (13, 'Filip Neumann', 'fneumannc@rambler.ru', '33305 Reindahl Pass', '792-35-9381', '712-120-6213', 2);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (14, 'Minta Hoyland', 'mhoylandd@dailymail.co.uk', '481 Arapahoe Road', '814-33-1210', '244-773-8787', 2);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (15, 'Dennie De Beneditti', 'ddee@flavors.me', '77838 Nova Terrace', '553-18-1000', '676-614-7220', 10);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (16, 'Prudy Trotton', 'ptrottonf@spotify.com', '5 Farwell Junction', '524-67-9834', '158-564-8537', 9);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (17, 'Atalanta Barrowcliff', 'abarrowcliffg@digg.com', '26215 Kings Circle', '263-01-6076', '101-124-2172', 9);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (18, 'Torrance Chansonne', 'tchansonneh@1und1.de', '4 Ridgeway Road', '812-92-8728', '911-219-7600', 2);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (19, 'Corbet Caldow', 'ccaldowi@examiner.com', '10510 Farmco Park', '236-36-9316', '293-265-6046', 10);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (20, 'Fleur Shoesmith', 'fshoesmithj@goodreads.com', '339 Shelley Trail', '831-83-5406', '336-408-3024', 6);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (21, 'Adelaida Beagin', 'abeagink@ehow.com', '4691 Kinsman Road', '793-31-4715', '169-523-5610', 2);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (22, 'Xenos Ovitz', 'xovitzl@51.la', '713 Meadow Ridge Plaza', '607-56-5152', '373-989-0045', 5);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (23, 'Deni Kremer', 'dkremerm@newsvine.com', '0376 Maryland Point', '749-71-2468', '368-225-4763', 6);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (24, 'Emylee MacCurlye', 'emaccurlyen@sciencedaily.com', '944 Miller Hill', '140-58-1751', '714-564-5631', 6);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (25, 'Normy Hammonds', 'nhammondso@walmart.com', '36300 Hollow Ridge Junction', '790-19-1536', '829-582-4742', 9);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (26, 'Welsh Swatton', 'wswattonp@columbia.edu', '9255 Mariners Cove Park', '543-67-4157', '481-914-1805', 8);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (27, 'Virgina Dibb', 'vdibbq@chronoengine.com', '59 Hallows Terrace', '570-32-5034', '273-818-3049', 6);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (28, 'Katharine Springett', 'kspringettr@china.com.cn', '23 Annamark Hill', '624-61-9487', '944-333-5680', 9);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (29, 'Amble Elvins', 'aelvinss@yale.edu', '752 Luster Street', '859-49-3348', '258-982-3445', 2);
insert into clients (client_id, name, email, address, dni, phone_number, location_id) values (30, 'Krista Brunesco', 'kbrunescot@si.edu', '972 Walton Hill', '405-89-4335', '512-183-7161', 1);


-- Script para inserción de datos en tabla de Employees

insert into employees (employee_id, name, dni, phone_number, role_id) values (1, 'Kanya Rennock', '210-40-3921', '260-945-9932', 6);
insert into employees (employee_id, name, dni, phone_number, role_id) values (2, 'Teodora Abbitt', '384-96-7514', '902-155-7763', 5);
insert into employees (employee_id, name, dni, phone_number, role_id) values (3, 'Seumas Suscens', '516-74-9164', '142-296-8837', 5);
insert into employees (employee_id, name, dni, phone_number, role_id) values (4, 'Neville Brayshay', '331-17-8315', '806-905-0909', 1);
insert into employees (employee_id, name, dni, phone_number, role_id) values (5, 'Ermengarde Nind', '897-31-4440', '508-816-6404', 7);
insert into employees (employee_id, name, dni, phone_number, role_id) values (6, 'Davina Simonassi', '549-43-5693', '333-263-3976', 4);
insert into employees (employee_id, name, dni, phone_number, role_id) values (7, 'Nikkie Axelbey', '360-41-9489', '612-789-3153', 4);
insert into employees (employee_id, name, dni, phone_number, role_id) values (8, 'Lewiss Emanuelli', '540-58-3191', '888-637-7900', 3);
insert into employees (employee_id, name, dni, phone_number, role_id) values (9, 'Rouvin Andreone', '879-83-9019', '660-278-5673', 7);
insert into employees (employee_id, name, dni, phone_number, role_id) values (10, 'Connie Bridgwood', '618-44-2697', '866-174-3004', 1);
insert into employees (employee_id, name, dni, phone_number, role_id) values (11, 'Karoly Sanper', '722-37-2288', '757-579-7631', 7);
insert into employees (employee_id, name, dni, phone_number, role_id) values (12, 'Truda Bundey', '844-10-3671', '506-146-0254', 1);
insert into employees (employee_id, name, dni, phone_number, role_id) values (13, 'Nevile Raddenbury', '641-53-0585', '544-438-9168', 2);
insert into employees (employee_id, name, dni, phone_number, role_id) values (14, 'Seana Jerzykiewicz', '363-04-1127', '337-407-5414', 1);
insert into employees (employee_id, name, dni, phone_number, role_id) values (15, 'Corri Blincowe', '767-32-2392', '230-701-9045', 6);


-- Script para inserción de pedidos ficticios en tabla de Orders

insert into orders (order_id, order_date, client_id, amount, status_id) values (1, '2022-11-02', 20, 199017.94, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (2, '2024-05-26', 20, 165763.59, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (3, '2023-01-16', 25, 326475.18, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (4, '2024-01-06', 21, 147858.14, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (5, '2022-02-15', 24, 408685.54, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (6, '2022-05-30', 4, 518416.36, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (7, '2022-05-02', 2, 406790.87, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (8, '2022-01-11', 5, 221237.8, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (9, '2023-12-16', 24, 339850.54, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (10, '2022-07-15', 24, 341581.17, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (11, '2023-12-14', 5, 32469.74, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (12, '2022-04-19', 10, 686063.99, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (13, '2022-04-16', 1, 542504.95, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (14, '2023-09-19', 30, 119580.42, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (15, '2022-11-05', 5, 613857.36, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (16, '2022-09-21', 12, 315584.59, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (17, '2023-06-11', 21, 451701.36, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (18, '2022-04-21', 4, 101495.14, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (19, '2023-08-10', 19, 686235.23, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (20, '2023-10-02', 23, 615637.06, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (21, '2023-03-06', 7, 333467.38, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (22, '2022-11-01', 14, 601763.23, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (23, '2023-09-29', 20, 306821.87, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (24, '2024-07-15', 11, 158876.88, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (25, '2023-06-24', 8, 244535.97, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (26, '2023-05-24', 11, 233023.18, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (27, '2023-02-05', 23, 469587.85, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (28, '2023-09-11', 6, 668877.83, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (29, '2023-08-06', 29, 423997.04, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (30, '2024-01-08', 19, 500660.6, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (31, '2023-07-24', 14, 239001.57, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (32, '2022-11-07', 2, 485824.95, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (33, '2022-06-25', 5, 190608.76, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (34, '2022-04-23', 2, 665503.2, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (35, '2023-04-15', 27, 462830.82, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (36, '2022-04-08', 12, 569884.08, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (37, '2022-01-17', 23, 518009.26, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (38, '2022-03-14', 26, 355326.53, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (39, '2023-09-20', 2, 92732.78, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (40, '2024-07-13', 13, 457544.65, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (41, '2023-05-23', 20, 276926.88, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (42, '2024-06-22', 8, 167885.19, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (43, '2024-05-07', 23, 19091.58, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (44, '2023-10-16', 23, 88707.92, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (45, '2022-06-13', 6, 386140.92, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (46, '2023-07-17', 20, 421472.34, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (47, '2023-07-07', 2, 328721.72, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (48, '2022-09-21', 28, 174257.67, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (49, '2023-03-20', 11, 420780.0, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (50, '2023-06-23', 1, 387346.52, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (51, '2023-04-11', 30, 676759.2, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (52, '2024-06-02', 5, 349604.11, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (53, '2024-02-01', 1, 143964.15, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (54, '2024-04-10', 10, 55969.19, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (55, '2022-07-12', 23, 331572.33, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (56, '2023-06-07', 3, 328579.8, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (57, '2024-08-31', 30, 258682.29, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (58, '2024-05-07', 4, 545149.14, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (59, '2023-06-07', 26, 237454.33, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (60, '2023-02-18', 26, 282176.04, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (61, '2024-09-10', 10, 153409.04, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (62, '2022-06-29', 26, 110150.64, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (63, '2024-02-25', 24, 591936.77, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (64, '2022-10-01', 13, 226938.07, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (65, '2022-10-02', 20, 583344.84, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (66, '2024-05-18', 6, 311571.53, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (67, '2022-12-04', 4, 301625.43, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (68, '2023-02-06', 13, 498686.34, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (69, '2024-01-26', 14, 453903.1, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (70, '2022-03-23', 9, 575932.66, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (71, '2023-12-17', 7, 305957.15, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (72, '2022-10-29', 28, 411112.77, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (73, '2023-05-27', 29, 36938.72, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (74, '2022-01-23', 27, 484550.98, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (75, '2024-09-25', 5, 141068.44, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (76, '2024-06-03', 16, 41768.15, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (77, '2022-02-16', 30, 673725.17, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (78, '2022-04-16', 2, 342729.1, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (79, '2024-07-25', 14, 35469.2, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (80, '2022-03-09', 28, 349951.19, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (81, '2024-06-03', 21, 200203.38, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (82, '2023-08-07', 30, 204525.93, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (83, '2023-07-25', 14, 690390.7, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (84, '2023-07-14', 6, 174446.0, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (85, '2023-06-13', 6, 28744.69, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (86, '2024-03-16', 19, 190136.67, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (87, '2023-05-15', 29, 437650.79, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (88, '2023-03-28', 10, 303466.52, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (89, '2022-02-24', 14, 206528.5, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (90, '2022-04-03', 23, 664050.79, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (91, '2023-11-18', 24, 428854.91, 2);
insert into orders (order_id, order_date, client_id, amount, status_id) values (92, '2023-11-18', 11, 83405.71, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (93, '2022-05-09', 5, 268797.35, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (94, '2023-02-07', 17, 456228.92, 4);
insert into orders (order_id, order_date, client_id, amount, status_id) values (95, '2024-01-25', 27, 324227.27, 3);
insert into orders (order_id, order_date, client_id, amount, status_id) values (96, '2023-05-23', 15, 38954.49, 5);
insert into orders (order_id, order_date, client_id, amount, status_id) values (97, '2022-05-21', 14, 166257.13, 6);
insert into orders (order_id, order_date, client_id, amount, status_id) values (98, '2023-08-31', 29, 387218.23, 1);
insert into orders (order_id, order_date, client_id, amount, status_id) values (99, '2024-07-16', 21, 543558.09, 7);
insert into orders (order_id, order_date, client_id, amount, status_id) values (100, '2023-11-15', 4, 49817.57, 6);


-- Script para inserción de pedidos ficticios en tabla de OrdersDetail

insert into orders_detail (order_id, product_id, quantity, amount) values (1, 16, 2, 30.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (1, 14, 1, 15.5);
insert into orders_detail (order_id, product_id, quantity, amount) values (1, 11, 3, 45.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (1, 15, 4, 60.0);

insert into orders_detail (order_id, product_id, quantity, amount) values (2, 21, 2, 40.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (2, 16, 1, 20.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (2, 29, 3, 60.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (2, 17, 4, 80.0);

insert into orders_detail (order_id, product_id, quantity, amount) values (3, 10, 2, 50.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (3, 30, 1, 25.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (3, 30, 3, 75.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (3, 27, 4, 100.0);

insert into orders_detail (order_id, product_id, quantity, amount) values (4, 4, 2, 35.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (4, 11, 1, 17.5);
insert into orders_detail (order_id, product_id, quantity, amount) values (4, 18, 3, 52.5);
insert into orders_detail (order_id, product_id, quantity, amount) values (4, 25, 4, 70.0);

insert into orders_detail (order_id, product_id, quantity, amount) values (5, 17, 2, 40.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (5, 13, 1, 20.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (5, 25, 3, 60.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (5, 27, 4, 80.0);

insert into orders_detail (order_id, product_id, quantity, amount) values (6, 6, 2, 50.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (6, 4, 1, 25.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (6, 28, 3, 75.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (6, 2, 4, 100.0);

insert into orders_detail (order_id, product_id, quantity, amount) values (7, 24, 2, 35.0);
insert into orders_detail (order_id, product_id, quantity, amount) values (7, 23, 1, 17.5);
insert into orders_detail (order_id, product_id, quantity, amount) values (7, 25, 3, 52.5);
insert into orders_detail (order_id, product_id, quantity, amount) values (7, 21, 4, 70.0);
