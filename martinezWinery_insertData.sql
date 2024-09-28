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
