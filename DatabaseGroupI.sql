drop database DatabaseGroupI;
create database DatabaseGroupI;
use DatabaseGroupI;

drop table register_city_name;
create table register_city_name(
    city_id int auto_increment primary key,
    city_name varchar(255),
    city_population int,
    num_family_c int
);

drop table register_barangay;
create table register_barangay(
    barangay_id int auto_increment primary key,
    barangay_name varchar(255),
    barangay_population int,
    num_family_b int,
    city_id int,
    foreign key(city_id)
    	references register_city_name(city_id)
);

drop table register_family_name;
create table register_family_name(
    family_id int auto_increment primary key,
    family_name varchar(255),
    family_size int,
    num_children int,
    barangay_id int,
    foreign key(barangay_id)
    	references register_barangay(barangay_id)
);

drop table register_person;
create table register_person(
    person_id int auto_increment primary key,
    person_fname varchar(255),
    person_sname varchar(255),
    person_age int,
    person_gender varchar(255),
    marital_status varchar(255),
    person_occupation varchar(255),
    family_id int,
    foreign key(family_id)
    	references register_family_name(family_id)
);

INSERT INTO register_city_name(city_name, city_population, num_family_c)
VALUES
    ('Caloocan', 15, 5),
    ('Pasay', 41, 3),
    ('Quezon', 29, 7),
    ('Batangas', 23, 4),
    ('Cotabato', 17, 6),
    ('Mandaluyong', 30, 3),
    ('Pasig', 75, 4),
    ('Iloilo', 38, 5),
    ('Taguig', 64, 6),
    ('Manila', 17, 9),
    ('Makati', 51, 7),
    ('Tagaytay', 71, 8),
    ('Parañaque', 66, 3),
    ('Cavite City', 11, 5),
    ('Cebu', 92, 5),
    ('Zamboanga', 86, 3),
    ('Cabanatuan', 22, 7),
    ('cagayan De Oro', 67, 8),
    ('Davao', 16, 4),
    ('Dagupan', 17, 2),
    ('Alaminos', 34, 9),
    ('Angeles', 56, 6),
    ('Antipolo', 23, 6),
    ('Bacolod', 56, 9),
    ('Bacoor', 78, 10),
    ('Bago', 65, 8),
    ('Baguio', 78, 6),
    ('Bais', 21, 9),
    ('Balanga', 43, 6),
    ('Batac', 23, 5),
    ('Bayawan', 12, 4),
    ('Baybay', 32, 6),
    ('Bayugan', 34, 7),
    ('Biñan', 32, 8),
    ('Butuan', 12, 3),
    ('Cabuyao', 76, 9),
    ('Canlaon', 45, 5),
    ('Cauayan', 21, 7),
    ('Dapitan', 42, 6),
    ('Dasmariñas', 75, 5),
    ('Dipolog', 43, 7),
    ('Dumaguete', 98, 9),
    ('Escalante', 23, 5),
    ('Gapan', 36, 6),
    ('General Santos', 54, 8),
    ('Gingoog', 78, 10),
    ('Ilagan', 65, 5),
    ('Iligan', 54, 8),
    ('Imus', 23, 4),
    ('Iriga', 57, 7),
    ('Isabela', 87, 9),
    ('Kidapawan', 74, 9),
    ('Koronadal', 71, 9),
    ('Lamitan', 74, 9),
    ('Laoag', 72, 9),
    ('Lapu-Lapu', 53, 7),
    ('Las Piñas', 25, 5),
    ('Legazpi', 24, 4),
    ('Ligao', 35, 7),
    ('Lipa', 53, 5),
    ('Lucena', 74, 8),
    ('Maasin', 25, 4),
    ('Mabalacat', 23, 6),
    ('Malabon', 54, 16),
    ('Malaybalay', 12, 3),
    ('Malolos', 43, 23),
    ('Mandaue', 86, 21),
    ('Marawi', 27, 6),
    ('Marikina', 54, 14),
    ('Masbate City', 76, 12),
    ('Mati',71, 20),
    ('Meycauayan', 54, 21),
    ('Muñoz',71, 25),
    ('Muntinlupa',42, 14),
    ('Naga',26, 4),
    ('Urdaneta',74, 17),
    ('Navotas',98, 44),
    ('Olongapo',49, 7),
    ('Ormoc',36, 5),
    ('Oroquieta',69, 8),
    ('Ozamiz',36, 9),
    ('Pagadian',24, 4),
    ('Palayan',82, 16),
    ('Panabo',86, 36),
    ('Valenzuela',74, 33),
    ('Puerto Princesa',22, 3),
    ('Roxas',78, 24),
    ('Sagay',49, 19),
    ('Samal',78, 20),
    ('San Carlos',45, 6),
    ('San Carlos',32, 8),
    ('San Fernando',18, 2),
    ('Valencia',43, 9),
    ('San Jose',16, 3),
    ('San Jose del Monte',82, 29),
    ('San Juan',48, 15),
    ('San Pablo',30, 7),
    ('San Pedro',60, 10),
    ('Santa Rosa',55, 18),
    ('Santiago',20, 5),
    ('Silay',70, 19)
;

INSERT INTO register_barangay(barangay_name, barangay_population, num_family_b, city_id)
VALUES
	('Brgy. 89', 22, 3, 1),
	('Brgy. 105', 33, 6, 2),
	('Commonwealth',45 , 5, 3),
	('Bukal', 54, 9, 4),
	('Poblacion 1', 93, 4, 5),
	('Addition hills', 78, 2, 6),
	('San antonio', 87, 6, 7),
	('Santa Cruz', 87, 6, 8),
	('Lower Bicutan', 73, 8, 9),
	('Binondo', 73, 3, 10),
	('West Rembo', 66, 4, 11),
	('Neogan', 72, 8, 12),
	('Don Bosco', 65, 5, 13),
	('Hen. M. Trias', 31, 4, 14),
	('Paril', 52, 2, 15),
	('Lanzonesa', 26, 3, 16),
	('Balite', 12, 5, 17),
	('Lapasan', 48, 6, 18),
	('Talomo', 63, 9, 19),
	('Pantal', 35, 7, 20),
	('Vicoria', 98, 9, 21),
	('Pulungbulu', 84, 8, 22),
	('San Roque', 99, 9, 23),
	('Montevista', 51, 7, 24),
	('Molino 5', 26, 8, 25),
	('Caridad', 48, 9, 26),
	('Lualhati', 62, 5, 27),
	('Panala-an', 36, 6, 28),
	('Tanato', 43, 8, 29),
	('Brgy 21', 26, 4, 30),
	('Narra', 84, 8, 31),
	('Baybay', 35, 7, 32),
	('Mabuhay', 41, 6, 33),
	('Sto. Tomas', 87, 9, 34),
	('Antongalon', 85, 8, 35),
	('Banlic', 96, 9, 36),
	('Pula', 25, 5, 37),
	('Buyon', 47, 6, 38),
	('Oro', 63, 8, 39),
	('Victoria Reyes', 25, 5, 41),
	('Galas', 35, 7,42),
	('Banilad', 74, 8,43),
	('Escalante', 44, 4,44),
	('Bulak', 48, 6,45),
	('Ligaya', 28, 3,46),
	('Talisay', 62, 6,47),
	('Guinatan', 82, 8,48),
	('Dalipuga', 47, 4,49),
	('Bayan Luma', 82, 8,40),
	('Francia', 83, 8,50),
	('Aguada', 57, 5,51),
	('Amas', 25, 5,52),
	('Morales', 25, 5,53),
	('Arco', 74, 7,54),
	('San Lorenzo', 72, 7,55),
	('Agus', 39, 4, 56),
	('Almanza uno', 25, 5, 57),
	('Sagpon', 87, 7, 58),
	('Abella', 58, 6, 59),
	('Adya', 52, 7, 60),
	('Barra', 45, 5, 61),
	('Abgao', 36, 4, 62),
	('Bical', 47, 7, 63),
	('Baritan', 39, 4, 64),
	('Kulaman', 74, 7, 65),
	('Lugam', 63, 8, 66),
	('Bakilid', 85, 8, 67),
	('Tampilong', 93, 9, 68),
	('Parang', 41, 6, 69),
	('Espinosa', 47, 7, 71),
  	('Mamali', 85, 8, 72),
  	('Tugatog', 96, 9, 73),
  	('Balante', 63, 6, 74),
  	('Buli', 87, 8, 75),
	('Alpaco', 84, 8, 76),
  	('Cararayan', 85, 8, 77),
	('Daanghari', 93, 9, 78),
	('Santa Rita', 54, 8, 79),
	('Gaas', 25, 5, 80),
	('Burgos', 74, 7, 81),
	('Bagakay', 71, 7, 82),
	('Maligaya', 28, 7, 83),
	('Dapco', 62, 6, 84),
	('Mulapula', 25, 5, 85),
   	('Iwahig', 41, 4, 86),
	('Bago', 17, 3, 87),
	('Baviera', 28, 7, 86),
	('Adecor', 93, 9, 87),
	('Panipuan', 53, 8, 88),
	('Progreso', 28, 7, 89),
	('Ibaba', 21, 7, 90),
	('Balogo', 62, 6, 91),
	('Nonoc', 63, 8, 92),
	('Cabalawan', 85, 5, 93),
	('Ubujan', 85, 5, 94),
	('Cale', 25, 5, 95),
	('Suizo', 85, 8, 96),
	('Leonarda', 63, 8, 97),
	('Parada', 25, 5, 98),
	('Raois', 47, 7, 99),
	('Lumbo', 83, 8, 100)
;

INSERT INTO register_family_name(family_name, family_size, num_children, barangay_id)
VALUES
    ('Santos', 3, 1, 3),
    ('Mondala', 2, 0, 6),
    ('Manlangit', 1, 0, 1),
    ('Diaz', 1, 0, 9),
    ('Aranete', 2, 0, 2),
    ('Lara', 1, 0, 10),
    ('Mendoza', 1, 0, 5),
    ('Faragones', 1, 0, 4),
    ('David', 4, 2, 8),
    ('Molina', 1, 0, 7),
    ('Borja', 2, 1, 100),
    ('Borja', 3, 1, 100),
    ('Reyes', 1, 0, 99),
    ('Balmes', 5, 3, 98),
    ('Corpuz', 4, 2, 11),
    ('Galvez', 1, 0, 12),
    ('Dimajutoc', 1, 0, 13),
    ('Fajardo', 5, 3, 14),
    ('De Luna',4,2, 15),
    ('Perez', 4,2, 16),
    ('Pinpin', 4, 2, 17),
    ('Salazar', 2, 0, 18),
    ('Cruzada', 2, 0, 19),
    ('Garcia', 3, 1, 20),
    ('Lugami', 4, 2, 21),
    ('Ramos', 4, 2, 22),
    ('Magbuhos', 3, 1, 23),
    ('Aycardo', 3, 1,24),
    ('Sabandal', 3, 1, 25),
    ('Tano', 3, 1, 26),
    ('Millar', 3, 1, 27),
    ('Gines', 5, 3, 28),
    ('Magpantay', 3, 1, 29),
    ('Mojica', 2, 0, 30),
    ('Pineda', 2, 0, 31),
    ('Abrea', 3, 1, 32),
    ('Dimagiba', 3, 1, 33),
    ('Atayde', 3, 1, 34),
    ('Tividad', 3, 1, 35),
    ('Orodio', 3, 1, 36),
    ('Mangurun', 3, 1, 37),
    ('Paglinawan', 2, 0, 38),
    ('Manganti', 3, 1, 39),
    ('Fabricante', 3, 1, 40),
    ('Tabla', 4, 2, 42),
    ('Arquero', 1, 0, 41),
    ('Fordan', 2, 0, 43),
    ('Nunez', 3, 1, 44),
    ('Nofies', 3, 1, 45),
    ('Yap', 3, 1, 46),
    ('Razon', 3, 1, 48),
    ('Aquino', 3, 1, 47),
    ('Abinoja', 3, 1, 49),
    ('Dimayuga', 3, 1, 50),
    ('Chavez', 3, 1, 51),
    ('Cortez', 3, 1,52),
    ('Arevalo', 3, 1, 53),
    ('Dela Cruz', 3, 1, 54),
    ('Dela Serna', 3, 1, 55),
    ('Donaire', 3, 1, 56),
    ('Martinez', 3, 1, 57),
    ('Ong', 3, 1, 58),
    ('Medina', 3, 1, 59),
    ('Santiago', 3, 1, 60),
    ('Torres', 3, 1, 61),
    ('Bautista', 3, 1, 62),
    ('Santelices', 3, 1, 63),
    ('Suarez', 3, 1, 64),
    ('Maligaya', 3, 1, 65),
    ('Ferrer', 3, 1, 66),
    ('Villanueva', 3, 1, 67),
    ('Vergara', 3, 1, 68),
    ('Dasig', 3, 1, 69),
    ('Serna', 4, 2, 70),
    ('Pelaez', 3, 1, 71),
    ('Habon', 1, 0, 72),
    ('Caranto', 2, 0, 73),
    ('Medina', 1, 0, 74),
    ('Monguez', 1, 0, 75),
    ('Campos', 4, 2, 76),
    ('Maranan', 1, 0, 78),
    ('Abrenica', 2, 0, 77),
    ('Mejia', 3, 2, 79),
    ('Paz', 4, 2, 80),
    ('Smith', 2, 0, 81),
    ('Abenales', 2, 1, 82),
    ('Cello', 1, 0, 83),
    ('Sanchez', 1, 0, 84),
    ('Monzon', 3, 1, 85),
    ('Alota', 3, 1, 86),
    ('Dayu', 1, 0, 87),
    ('Yalong', 1, 0, 88),
    ('Villarin', 1, 0, 89),
    ('Velasco', 5, 3, 90),
    ('Sagun', 3, 2, 91),
    ('Perez', 3, 1, 92),
    ('Villanueva', 1, 0, 93),
    ('Bautista', 1, 0, 94),
    ('Alimento', 2, 0, 95),
    ('Cruz', 1, 0, 96),
    ('Urtula', 1, 0, 97),
    ('Dantes', 3, 1, 98),
    ('Garcia', 3, 2,3)
;
 
INSERT INTO register_person(person_fname, person_sname, person_age, person_gender, marital_status, person_occupation, family_id)
VALUES
	('Steven', 'Santos', 46, 'male', 'married', 'payment_specialist', 1),
	('Belle', 'Santos', 44, 'female', 'married', 'service_coordinator', 1),
	('Jodalyn', 'Santos', 22, 'female', 'single', 'college_student', 1),
	('Angel', 'Mondala', 26, 'female', 'married', 'chemical_engineer', 2),
	('Charles', 'Mondala', 29, 'male', 'married', 'chemical_engineer', 2),
	('Jefferson', 'Manlangit', 35, 'male', 'single', 'restaurant_manager', 3),
	('Aubrey', 'Diaz', 25, 'female', 'single', 'accountant', 4),
	('Michael', 'Aranete', 35, 'male', 'married', 'call_center_agent', 5),
	('Marthy', 'Aranete', 29, 'female', 'married', 'pharmacist', 5),
	('Jaycee', 'Lara', 26, 'female', 'married', 'professor', 6),
	('Sharie', 'Mendoza', 28, 'female', 'single', 'teacher', 7),
	('Rhobin', 'Faragones', 25, 'male', 'single', 'it_personnel', 8),
	('Jose', 'David', 35, 'male', 'married', 'barbeque_vendor', 9),
	('Ailyn', 'David', 36, 'female', 'married', 'barbeque_vendor', 9),
	('Arzel', 'David', 22, 'female', 'single', 'college_student', 9),
	('Jean', 'David', 19, 'female', 'single', 'college_student', 9),
	('Eusebio', 'Molina', 33, 'male', 'single', 'digital_artist', 10),
	('Yolanda', 'Borja', 54, 'female', 'married', 'vegetable_vendor', 11),
	('Arvie', 'Borja', 57, 'male', 'married', 'taxi_driver', 11),
	('Jordan', 'Borja', 34, 'male', 'married', 'it_specialist', 11),
	('Frances', 'Borja', 31, 'female', 'married', 'call_center_agent', 12),
	('Ezekiel', 'Borja', 14, 'male', 'single', 'student', 12),
	('Christyll', 'Reyes', 49, 'female', 'married', 'principal', 13),
	('Morris', 'Balmes', 45, 'male', 'married', 'bartender', 14),
	('Karra', 'Balmes' ,39, 'female', 'married', 'promodizer', 14),
	('Viel', 'Balmes', 17, 'male', 'single', 'student', 14),
	('Yanah', 'Balmes', 15, 'female', 'single', 'student', 14),
	('Simon', 'Balmes', 12, 'male', 'single', 'student', 14),
	('Royette', 'Corpuz', 44, 'male', 'married', 'electrician', 15),
	('Lovely', 'Corpuz', 41, 'female', 'married', 'tourist_guide', 15),
	('Ian', 'Corpuz', 21, 'male', 'single', 'college_student', 15),
	('Iya', 'Corpuz', 14, 'female', 'single', 'student', 15),
	('Patrick', 'Galvez', 24, 'male', 'single', 'blogger', 16),
	('Dianne', 'Dimajutoc', 27, 'female', 'single', 'nurse', 17),
	('Alvin', 'Fajardo', 39, 'male', 'married', 'data_encoder', 18),
	('Jonna', 'Fajardo', 40, 'female', 'married', 'system_administrator', 18),
	('Joseph', 'Fajardo', 19, 'male', 'single', 'college_student', 18),
	('Ara', 'Fajardo', 18, 'female', 'single', 'college_student', 18),
	('Mae', 'Fajardo', 10, 'female', 'single', 'student', 18),
	('Donald', 'De Luna', 38, 'male', 'married', 'programmer', 19),
	('Analyn', 'De Luna', 30, 'female', 'married', 'secretary', 19),
	('Heart', 'De Luna', 14, 'female', 'single', 'student', 19),
	('Daryll', 'De Luna', 18, 'male', 'single', 'student', 19),
	('Gerardo', 'Perez', 40, 'male', 'married', 'manager', 20),
	('Liza', 'Perez', 35, 'female', 'married', 'teacher', 20),
	('Tomas', 'Perez', 10, 'male', 'single', 'student', 20),
	('Allen', 'Perez', 17, 'male', 'single', 'student', 20),
	('Hilario', 'Pinpin', 60, 'male', 'married', 'seaman', 21),
	('Fe', 'Pinpin', 68, 'female', 'married', 'saleslady', 21),
	('Dexter', 'Pinpin', 35, 'male', 'married', 'seaman', 21),
	('Glenn', 'Pinpin', 30, 'male', 'single', 'doctor', 21),
	('Denver', 'Salazar', 38, 'male', 'married', 'technician', 22),
	('Daisy', 'Salazar', 57, 'female', 'married', 'supervisor', 22),
	('Carlo', 'Cruzada', 37, 'male', 'married', 'manager', 23),
	('Neri', 'Cruzada', 36, 'female', 'married', 'technician', 23),
	('Edna', 'Garcia', 44, 'female', 'married', 'school_principal', 24),
	('Ricky', 'Garcia', 49, 'male', 'married', 'artist', 24),
	('Karl', 'Garcia', 21, 'male', 'single', 'student', 24),
	('Danilo', 'Lugami', 51, 'male', 'married', 'technician', 25),
	('Rosalyn', 'Lugami', 46, 'female', 'married', 'secretary', 25),
	('Fritz', 'Lugami', 21, 'female', 'single', 'manager', 25),
	('Brent', 'Lugami', 14, 'female', 'single', 'student', 25),
	('Aladin', 'Ramos', 66, 'male', 'married', 'overseas worker', 26),
	('Kert', 'Ramos', 39, 'female', 'married', 'welder', 26),
	('Eugene', 'Ramos', 22, 'male', 'single', 'student', 26),
	('Eugine', 'Ramos', 20, 'male', 'single', 'student', 26),
	('Rick', 'Magbuhos', 70, 'male', 'married', 'driver', 27),
	('Yolly', 'Magbuhos', 65, 'female', 'married', 'vendor', 27),
	('Erick', 'Magbuhos', 15, 'male', 'single', 'student', 27),
	('Arnold', 'Aycardo', 41, 'male', 'married', 'driver', 28),
	('Mary_Joy', 'Aycardo', 34, 'female', 'married', 'overseas worker', 28),
	('Kim', 'Aycardo', 28, 'female', 'single', 'nurse', 28),
	('Leo', 'Sabandal', 42, 'male', 'married', 'welder', 29),
	('Melissa', 'Sabandal', 30, 'female', 'married', 'waitress', 29),
	('Innah', 'Sabandal', 20, 'female', 'single', 'teacher', 29),
	('Ryan', 'Tano', 42, 'male', 'married', 'police', 30),
	('Ruth', 'Tano', 29, 'female', 'married', 'nurse', 30),
	('James', 'Tano', 23, 'male', 'single', 'student', 30),
	('Michael', 'Millar', 22, 'male', 'married', 'programmer', 31),
	('Laini', 'Millar', 28, 'female', 'married', 'architect', 31),
	('Chalie', 'Millar', 13, 'female', 'single', 'student', 31),
	('Larry', 'Gines', 54, 'male', 'married', 'school principal', 32),
	('Mau', 'Gines', 33, 'female', 'married', 'teacher', 32),
	('Alexander', 'Gines', 22, 'male', 'single', 'student', 32),
	('Arthur', 'Gines', 22, 'male', 'single', 'student', 32),
	('Knight', 'Gines', 15, 'male', 'single', 'student', 32),
	('Lando', 'Magpantay', 54, 'male', 'married', 'manager', 33),
	('Lorie', 'Magpantay', 50, 'female', 'married', 'doctor', 33),
	('Itchel', 'Magpantay', 18, 'female', 'single', 'student', 33),
	('Antonio', 'Mojica', 69, 'male', 'married', 'pilot', 34),
	('Luz', 'Mojica', 45, 'female', 'married', 'teacher', 34),
	('Mark', 'Pineda', 22, 'male', 'married', 'programmer', 35),
	('Christine', 'Pineda', 36, 'female', 'married', 'cashier', 35),
	('Christian', 'Abrea', 54, 'male', 'married', 'engineer', 36),
	('Rica', 'Abrea', 45, 'female', 'married', 'lawyer', 36),
	('Dana', 'Abrea', 23, 'male', 'single', 'student', 36),
	('Bernard', 'Dimagiba', 54, 'male', 'married', 'driver', 37),
	('Patchi', 'Dimagiba', 50, 'female', 'married', 'teacher', 37),
	('Jj', 'Dimagiba', 30, 'male', 'single', 'student', 37),
	('John', 'Atayde', 30, 'male', 'married', 'driver', 38),
	('Kimberly', 'Atayde', 30, 'female', 'married', 'manicurist', 38),
	('Ray', 'Atayde', 11, 'male', 'single', 'student', 38),
	('Kim', 'Tividad', 54, 'male', 'married', 'engineer', 39),
	('Kiara', 'Tividad', 33, 'female', 'married', 'architect', 39),
	('Johna', 'Tividad', 22, 'female', 'single', 'nurse', 39),
	('Lonard', 'Orodio', 54, 'male', 'married', 'delivery boy', 40),
	('Hazel', 'Orodio', 34, 'female', 'married', 'technician', 40),
	('Roxan', 'Orodio', 18, 'female', 'single', 'student', 40),
	('Sophia', 'Paglinawan', 22, 'female', 'married', 'manager', 41),
	('Maxwell', 'Paglinawan', 30, 'male', 'married', 'engineer', 41),
	('Abdul', 'Mangurun', 54, 'male', 'married', 'driver', 42),
	('Mikaela', 'Mangurun', 40, 'female', 'married', 'lawyer', 42),
	('James', 'Mangurun', 20, 'male', 'single', 'student', 42),
	('Sean', 'Manganti', 30, 'male', 'married', 'electrician', 43),
	('Kianna', 'Manganti', 29, 'female', 'married', 'architect', 43),
	('Darwin', 'Manganti', 13, 'male', 'single', 'student', 43),
	('Joven', 'Fabricante', 59, 'male', 'married', 'engineer', 44),
	('Maricar', 'Fabricante', 45, 'female', 'married', 'programmer', 44),
	('Maria', 'Fabricante', 14, 'female', 'single', 'student', 44),
	('Jose', 'Tabla', 45, 'male', 'married', 'chef', 45),
	('Karla', 'Tabla', 34, 'female', 'married', 'manicurist', 45),
	('Stephen', 'Tabla', 23, 'male', 'single', 'student', 45),
	('Kimberly', 'Tabla', 17 , 'female', 'single', 'student', 45),
	('Mark Stephen', 'Arquero', 30, 'male', 'married', 'programmer', 46),
	('Joanna', 'Arquero', 27, 'female', 'married', 'nurse', 46),
	('Niko', 'Fordan', 31, 'male', 'married', 'engineer', 47),
	('Sheila', 'Fordan', 35, 'female', 'married', 'teacher', 47),
	('Joshua', 'Nunez', 24, 'male', 'married', 'driver', 48),
	('Dianne', 'Nunez', 28, 'female', 'married', 'vendor', 48),
	('Reynaldo', 'Nunez', 11, 'male', 'single', 'student', 48),
	('Ramon', 'Nofies', 52, 'male', 'married', 'electrician', 49),
	('Lexi', 'Nofies', 42, 'female', 'married', 'engineer', 49),
	('Karmen', 'Nofies', 19, 'female', 'single', 'student', 49),
	('Alyssa', 'Yap', 32, 'female', 'married', 'waitress', 50),
	('Raymond', 'Yap', 33, 'male', 'married', 'carpenter', 50),
	('Keann', 'Yap', 12, 'male', 'single', 'student', 50),
	('Mark', 'Razon', 50, 'male', 'married', 'welder', 51),
	('Bianca', 'Razon', 56, 'female', 'married', 'saleslady', 51),
	('Relz', 'Razon', 22, 'male', 'single', 'student', 51),
	('Bernard', 'Aquino', 58, 'male', 'married', 'driver', 52),
	('Yhan', 'Aquino', 44, 'female', 'married', 'manicurist', 52),
	('Ramon', 'Aquino', 23, 'male', 'single', 'student', 52),
	('Aaron', 'Abinoja', 37, 'male', 'married', 'waiter', 53),
	('Jolyn', 'Abinoja', 34, 'female', 'married', 'nurse', 53),
	('Sean', 'Abinoja', 16, 'male', 'single', 'student', 53),
	('Chalie', 'Dimayuga', 32, 'female', 'married', 'bartender', 54),
	('Paul', 'Dimayuga', 30, 'male', 'married', 'security guard', 54),
	('Jopat', 'Dimayuga', 12, 'male', 'single', 'student', 54),
	('Irvin', 'Chavez', 30, 'male', 'married', 'school principal', 55),
	('Bianca', 'Chavez', 25, 'female', 'married', 'teacher', 55),
	('Jhonathan', 'Chavez', 9, 'male', 'married', 'student', 55),
	('Nhald', 'Cortez', 50, 'male', 'married', 'carpenter', 56),
	('Merlie', 'Cortez', 43, 'female', 'married', 'painter', 56),
	('Apyong', 'Cortez', 21, 'male', 'single', 'student', 56),
	('Miguel', 'Arevalo', 64, 'male', 'married', 'waiter', 57),
	('Roselyn', 'Arevalo', 54, 'female', 'married', 'overseas worker', 57),
	('Andrea', 'Arevalo', 26, 'female', 'single', 'therapist', 57),
	('Albert', 'Dela Cruz', 44, 'male', 'married', 'librarian', 58),
	('Patricia', 'Dela Cruz', 34, 'female', 'married', 'overseas worker', 58),
	('Jj', 'Dela Cruz', 20, 'male', 'single', 'student', 58),
	('Briant', 'Dela Serna', 60, 'male', 'married', 'driver', 59),
	('Aliana', 'Dela Serna', 56, 'female', 'married', 'vendor', 59),
	('Lawrence', 'Dela Serna', 30, 'male', 'single', 'student', 59),
	('Kiel', 'Donaire', 39, 'male', 'married', 'security guard', 60),
	('Sam', 'Donaire', 40, 'female', 'married', 'teacher', 60),
	('Melissa', 'Donaire', 22, 'female', 'single', 'student', 60),
	('Martina', 'Martinez', 60, 'female', 'married', 'chef', 61),
	('Andrew', 'Martinez', 54, 'male', 'married', 'programmer', 61),
	('Cherry', 'Martinez', 25, 'female', 'single', 'student', 61),
	('Paolo', 'Ong', 42, 'male', 'married', 'driver', 62),
	('Rhenna', 'Ong', 30, 'female', 'married', 'teacher', 62),
	('Erwin', 'Ong', 11, 'male', 'single', 'student', 62),
	('Calvin', 'Medina', 54, 'male', 'married', 'programmer', 63),
	('Liezel', 'Medina', 33, 'female', 'married', 'teacher', 63),
	('Dominic', 'Medina', 54, 'male', 'single', 'student', 63),
	('Jerom', 'Santiago', 57, 'male', 'married', 'electrician', 64),
	('Danica', 'Santiago', 44, 'female', 'married', 'cashier', 64),
	('Louise', 'Santiago', 18, 'female', 'single', 'student', 64),
	('John', 'Torres', 24, 'male', 'married', 'driver', 65),
	('Marian', 'Torres', 29, 'female', 'married', 'overseas worker', 65),
	('Marie', 'Torres', 5, 'male', 'single', 'student', 65),
	('Nelson', 'Bautista', 54, 'male', 'married', 'technician', 66),
	('Anne', 'Bautista', 50, 'female', 'married', 'bartender', 66),
	('Elaine', 'Bautista', 22, 'female', 'single', 'student', 66),
	('Emman', 'Santelices', 48, 'male', 'married', 'security guard', 67),
	('Noelyn', 'Santelices', 39, 'female', 'married', 'teacher', 67),
	('Marivic', 'Santelices', 17, 'female', 'single', 'student', 67),
	('Jaime', 'Suarez', 54, 'male', 'married', 'reporter', 68),
	('Franchine', 'Suarez', 54, 'female', 'married', 'vendor', 68),
	('Mae', 'Suarez', 23, 'female', 'single', 'student', 68),
	('Nick', 'Maligaya', 43, 'male', 'married', 'welder', 69),
	('Beyonce', 'Maligaya', 36, 'female', 'married', 'vendor', 69),
	('Dana', 'Maligaya', 22, 'female', 'single', 'student', 69),
	('Earl', 'Ferrer', 62, 'male', 'married', 'pilot', 70),
	('Trixie', 'Ferrer', 54, 'female', 'married', 'manicurist', 70),
	('Angel', 'Ferrer', 26, 'female', 'single', 'student', 70),
	('Atkins', 'Villanueva', 38, 'male', 'married', 'teacher', 71),
	('Princess', 'Villanueva', 35, 'female', 'married', 'nurse', 71),
	('Joyce', 'Villanueva', 19, 'female', 'single', 'student', 71),
	('Joseph', 'Vergara', 43, 'male', 'married', 'carpenter', 72),
	('Joy', 'Vergara', 40, 'female', 'married', 'architect', 72),
	('Yasmine', 'Vergara', 26, 'female', 'single', 'student', 72),
	('Gabriel', 'Dasig', 44, 'male', 'married', 'reporter', 73),
	('Jasmine', 'Dasig', 44, 'female', 'married', 'musician', 73),
	('Catherine', 'Dasig', 23, 'female', 'single', 'student', 73),
	('Willie', 'Serna', 61, 'female','married', 'senior_citizen', 74),
	('Luloy', 'Serna', 63, 'male', 'married', 'senior_citizen', 74),
	('Arnie', 'Serna', 33, 'female', 'single', 'sales_lady', 74),
	('Dodong', 'Serna', 30, 'male', 'single', 'safety_coordinator', 74),
	('Leslie', 'Pelaez', 34, 'female', 'married', 'area_manager', 75),
	('Christopher', 'Pelaez', 36, 'male', 'married', 'security_guard', 75),
	('Isabela', 'Pelaez', 10, 'female', 'single', 'student', 75),
	('Shirland', 'Habon', 25, 'male', 'single', 'janitor', 76),
	('Shalee', 'Caranto', 30, 'female', 'married', 'marketing_manager', 77),
	('Jeremy', 'Caranto', 31, 'male', 'married', 'civil_engineer', 77),
	('Anabelle', 'Medina', 24, 'female', 'single', 'service_crew', 78),
	('Eduard', 'Monguez', 25, 'male', 'single', 'collector', 79),
	('Ronnie', 'Campos', 45, 'male', 'married', 'jeepney_driver', 80),
	('Aurora', 'Campos', 43, 'female', 'married', 'admin_officer', 80),
	('Kyle', 'Campos', 19, 'male', 'single', 'college_student', 80),
	('Josh', 'Campos', 15, 'male', 'single', 'student', 80),
	('Esther', 'Maranan', 25, 'female', 'single', 'secretary', 81),
	('Rachelle', 'Abrenica', 28, 'female', 'married', 'editor_in_chief', 82),
	('Shane', 'Abrenica', 30, 'male', 'married', 'chef', 82),
	('Jovelyn', 'Mejia', 27, 'female', 'married', 'casino_dealer', 83),
	('Nicole', 'Mejia', 7, 'female', 'single', 'student', 83),
	('Evo', 'Mejia', 6, 'male', 'single', 'student', 83),
	('Rhea', 'Paz', 38, 'female', 'married', 'housewife', 84),
	('Jonathan', 'Paz', 42, 'male', 'married', 'construction_worker', 84),
	('Chloe', 'Paz', 8, 'female', 'single', 'student', 84),
	('Kate', 'Paz', 12, 'female', 'single', 'student', 84),
	('Ken', 'Smith', 34, 'male', 'married', 'doctor', 85),
	('Zoey', 'Smith', 34, 'female', 'married', 'artist', 85),
	('Rufo', 'Abenales', 26, 'male', 'single', 'assistant_engineer', 86),
	('Mark', 'Abenales', 67, 'male', 'widow', 'senior_citizen', 86),
	('Jasmine', 'Cello', 22, 'female', 'single', 'cashier', 87),
	('Melody', 'Sanchez', 21, 'female', 'single', 'cashier', 88),
	('Kimberly', 'Monzon', 29, 'female', 'married', 'waitress', 89),
	('Gerald', 'Monzon', 32, 'male', 'married', 'cook', 89),
	('Shiela', 'Monzon', 5, 'female', 'single', 'not_yet_student', 89),
	('Rowena', 'Alota', 32, 'feamle', 'married', 'online_seller', 90),
	('Mjeck', 'Alota', 35, 'male', 'married', 'policeman', 90),
	('Jeron', 'Alota', 6, 'male', 'single', 'student', 90),
	('Jeck', 'Dayu', 27, 'male', 'single', 'call_center_agent', 91),
	('Juvilyn', 'Yalong', 25, 'female', 'single', 'biologist', 92),
	('Antonette', 'Villarin', 25, 'female', 'single', 'sales_coordinator', 93),
	('Fatima', 'Velasco', 47, 'female', 'married', 'online_teacher', 94),
	('Jerric', 'Velasco', 50, 'male', 'married', 'camera_man', 94),
	('Joseph', 'Velasco', 15, 'male', 'single', 'student', 94),
	('Felissa', 'Velasco', 17, 'male', 'single', 'student', 94),
	('Jema', 'Velasco', 24, 'female', 'single', 'architect', 94),
	('Jamaica', 'Sagun', 23, 'female', 'single', 'hr_admin', 95),
	('Agatha', 'Sagun', 20, 'female', 'single', 'college_student', 95),
	('Joanne', 'Sagun', 43, 'female', 'widow', 'call_center_agent', 95),
	('Ligaya', 'Perez', 61, 'female', 'married', 'senior_citizen', 96),
	('Ben', 'Perez', 65, 'male', 'married', 'senior_citizen', 96),
	('Abigail', 'Perez', 44, 'female', 'single', 'teacher', 96),
	('Eunice', 'Villanueva', 21, 'female', 'single', 'vocalist', 97),
	('Adonis', 'Bautista', 22, 'male', 'single', 'waiter', 98),
	('Mikaela', 'Alimento', 34, 'female', 'married', 'fish_vendor', 99),
	('Michael', 'Alimento', 37, 'male', 'married', 'messenger', 99),
	('Cassandra', 'Cruz', 23, 'female', 'single', 'receptionist', 100),
	('Carla', 'Urtula', 27, 'female', 'single', 'receptionist', 101),
	('Felix', 'Dantes', 35, 'male', 'married', 'manager', 102),
	('Marie', 'Dantes', 31, 'female', 'married', 'writer', 102),
	('Malia', 'Dantes', 16, 'female', 'single', 'student', 102),
	('Jack', 'Garcia', 41, 'male', 'widow', 'assistant_manager', 103),
	('Kath', 'Garcia', 23, 'female', 'single', 'college_student', 103),
	('Daniel', 'Garcia', 18, 'female', 'single', 'college_student', 103),
	('Lala', 'Garcia', 16, 'female', 'single', 'student', 103)
;

#CITY____________________________________________________________________________________________________________________________________________________________
drop procedure RegisterCity;
DELIMITER &&
CREATE PROCEDURE RegisterCity(in city_name varchar(255), in city_population int, in num_of_family int, out id int)
	BEGIN
    INSERT INTO register_city_name(city_name, city_population, num_family_c)
    VALUES
		(city_name, city_population, num_of_family);
	
	SELECT LAST_INSERT_ID() into id;
    END &&
DELIMITER ;
CALL RegisterCity('CHICAGO',1,2, @id);
select(@id);

drop procedure ViewCityById;
DELIMITER &&
CREATE PROCEDURE ViewCityById(in id int)
	BEGIN
    SELECT city_id, city_name, city_population, num_family_c
    FROM register_city_name
    where city_id = id;
    END && 
DELIMITER ;
CALL ViewCityById(1);

drop procedure ViewCity;
DELIMITER &&
CREATE PROCEDURE ViewCity(in id int)
	BEGIN
    SELECT city_id, city_name, city_population, num_family_c
    FROM register_city_name;
    END && 
DELIMITER ;
CALL ViewCity(1);

drop procedure UpdateCityById;
DELIMITER &&
CREATE PROCEDURE UpdateCityById(in city_name varchar(255), in city_population int, in num_of_family int, in c_id int)
	BEGIN
    UPDATE register_city_name
    SET
		city_name = city_name, 
        city_population = city_population, 
        num_family_c = num_of_family
	WHERE
		city_id = c_id;
    END &&
DELIMITER ;
CALL UpdateCityById('Caloocan',54,8,1);    

drop procedure DeleteCityById;
DELIMITER &&
CREATE PROCEDURE DeleteCityById(in c_id int)
	BEGIN
    DELETE FROM register_city_name
	WHERE city_id = c_id;
    END &&
DELIMITER ;
CALL DeleteCityById(1);

#PERSON_________________________________________________________________________________________________________________________________________________________________    
drop procedure RegisterPerson;
DELIMITER &&
CREATE PROCEDURE RegisterPerson(in fname varchar(255), in surname varchar(255), in age int, in gender varchar(255),in m_status varchar(255), in occupation varchar(255), in fam_id int ,out id int)
	BEGIN
    INSERT INTO register_person(person_fname, person_sname, person_age, person_gender, marital_status, person_occupation, family_id)
    VALUES
		(fname, surname, age, gender, m_status, occupation, fam_id);
	SELECT LAST_INSERT_ID() into id;
    END &&
DELIMITER ;
CALL RegisterPerson('Bea', 'Santos', 75, 'female', 'married', 'retired', 1, @id);
select(@id);

drop procedure ViewPersonById;
DELIMITER &&
CREATE PROCEDURE ViewPersonById(in id int)
	BEGIN
    SELECT person_id, person_fname, person_sname, person_age, person_gender, marital_status, person_occupation, family_id
    FROM register_person
    where person_id = id;
    END &&
DELIMITER ;
CALL ViewPersonById(1);

drop procedure ViewPerson;
DELIMITER &&
CREATE PROCEDURE ViewPerson()
	BEGIN
    SELECT person_id, person_fname, person_sname, person_age, person_gender, marital_status, person_occupation, family_id
    FROM register_person;
    END &&
DELIMITER ;
CALL ViewPerson();

drop procedure UpdatePersonById;
DELIMITER && 
CREATE PROCEDURE UpdatePersonById(in fname varchar(255), in surname varchar(255), in age int, in gender varchar(255),in m_status varchar(255), in occupation varchar(255), in p_id int, in fam_id int)
	BEGIN
    UPDATE register_person
	SET 
		person_fname = fname,
        person_sname = surname,
        person_age = age,
        person_gender = gender,
        marital_status = m_status,
        person_occupation = occupation,
        family_id = fam_id
	WHERE 
		person_id = p_id;
    END &&
DELIMITER ;
CALL UpdatePersonById('Catherine', 'Dasig', 24, 'female', 'single', 'student', 205, 205);

DELIMITER &&
CREATE PROCEDURE DeletePersonById(in p_id int)
	BEGIN
    DELETE FROM register_person
	WHERE 
		person_id = p_id;
    END &&
DELIMITER ;
CALL DeletePersonById(205);

#Barangay______________________________________________________________________________________________________________________
drop procedure RegisterBrgy;     
DELIMITER &&
CREATE PROCEDURE RegisterBrgy(in brgy_name varchar(255), in brgy_population int, in num_of_family int, in c_id int, out id int)
	BEGIN
    INSERT INTO register_barangay(barangay_name, barangay_population, num_family_b, city_id)
	VALUES
		(brgy_name, brgy_population, num_of_family, c_id);
	SELECT LAST_INSERT_ID() into id;
    END &&
DELIMITER ;
CALL RegisterBrgy('Poblacion',4,2, 1, @id);
select(@id);

drop procedure ViewBrgyById;
DELIMITER &&
CREATE PROCEDURE ViewBrgyById(in id int)
	BEGIN
    SELECT barangay_id, barangay_name, barangay_population, num_family_b, city_id
    FROM register_barangay
    where barangay_id = id;
    END &&
DELIMITER ;
CALL ViewBrgyById(1); 

drop procedure ViewBrgy;
DELIMITER &&
CREATE PROCEDURE ViewBrgy()
	BEGIN
    SELECT barangay_id, barangay_name, barangay_population, num_family_b, city_id
    FROM register_barangay;
    END &&
DELIMITER ;
CALL ViewBrgy(); 

drop procedure UpdateBrgyById;
DELIMITER &&
CREATE PROCEDURE UpdateBrgyById(in brgy_name varchar(255), in brgy_population int, in num_of_family int, in c_id int, in brgy_id int)
	BEGIN
    UPDATE register_barangay
    SET
		barangay_name = brgy_name, 
        barangay_population = brgy_population, 
        num_family_b = num_of_family,
        city_id = c_id
	WHERE
		barangay_id = brgy_id;
    END &&
DELIMITER ;
CALL UpdateBrgyById('',1,1,1,1);    

drop procedure DeleteBrgyById;
DELIMITER &&
CREATE PROCEDURE DeleteBrgyById(in brgy_id int)
	BEGIN
    DELETE FROM register_barangay
	WHERE 
		barangay_id = brgy_id;
    END &&
DELIMITER ;
CALL DeleteBrgyById(1);

#family__________________________________________________________________________________________________________________________
drop procedure RegisterFamily;     
DELIMITER &&
CREATE PROCEDURE RegisterFamily(in fam_name varchar(255), in fam_size int, in num_of_children int, in brgy_id int, out id int)
	BEGIN
    INSERT INTO register_family_name(family_name, family_size, num_children, barangay_id)
	VALUES
		(fam_name, fam_size, num_of_children, brgy_id);
	SELECT LAST_INSERT_ID() into id;
    END &&
DELIMITER ;
CALL RegisterFamily('Rasay',4,2,1, @id);
select(@id);

drop procedure ViewFamilyById;
DELIMITER &&
CREATE PROCEDURE ViewFamilyById(in id int)
	BEGIN
    SELECT family_id, family_name, family_size, num_children
    FROM register_family_name
    where family_id = id;
    END &&
DELIMITER ;
CALL ViewFamilyById(1);  

drop procedure ViewFamily;
DELIMITER &&
CREATE PROCEDURE ViewFamily()
	BEGIN
    SELECT family_id, family_name, family_size, num_children
    FROM register_family_name;
    END &&
DELIMITER ;
CALL ViewFamily();    

drop procedure UpdateFamilyById;
DELIMITER &&
CREATE PROCEDURE UpdateFamilyById(in fam_name varchar(255), in fam_size int, in num_of_children int, in brgy_id int, in fam_id int)
	BEGIN
    UPDATE register_family_name
    SET
		family_name = fam_name, 
        family_size = fam_size, 
        num_children = num_of_children,
        barangay_id = brgy_id
	WHERE
		family_id = fam_id;
    END &&
DELIMITER ;
CALL UpdateFamilyById('',1,1,1,1);    

drop procedure DeleteFamilyById;
DELIMITER &&
CREATE PROCEDURE DeleteFamilyById(in fam_id int)
	BEGIN
    DELETE FROM register_family_name
	WHERE family_id = fam_id;
    END &&
DELIMITER ;
CALL DeleteFamilyById(1);


#query 1
select c.city_name, b.barangay_name, b.num_family
from register_city_name as c
	inner join register_barangay as b
		on c.city_id = b.barangay_id 
	inner join register_family_name as f
		on b.barangay_d = f.barangay_id
;


 #query2
select c.city_name, c.city_population, b.barangay_name, b.barangay_population
from register_city_name as c
inner join register_barangay as b
on c.city_id = b.barangay_id
order by c.city_name, b.barangay_name asc
;


 #query3
select c.city_name, b.barangay_name, f.family_size
from register_family_name as f
	inner join register_city_name as c
		on c.city_id = f.family_id
	inner join register_barangay as b
		on b.barangay_id = f.family_id
order by c.city_name
;


 #query4
select c.city_name, b.barangay_name, o.occupation
from register_city_name as c
inner join register_barangay as b on c.city_id = b.city_id
inner join (
  select b.barangay_id,
    count(p.person_occupation) as occupation
  from register_family_name as f
  inner join register_person as p on p.family_id = f.family_id
  group by b.barangay_id
) as f
on f.barangay_id = b.barangay_id
group by c.city_name, b.barangay_name, o.occupation;
    
  
#query 5
select c.city_name, b.barangay_name
from register_city_name as c
inner join register_barangay as b
on c.city_id = b.barangay_id
where barangay_population > 
	(select avg(barangay_population)
	from register_barangay);
    
    


    
    

    
    

    
    
