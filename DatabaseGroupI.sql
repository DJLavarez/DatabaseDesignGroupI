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
	('Agus', 39, 4,56),
	('Almanza uno', 25, 5,57),
	('Sagpon', 87, 7,58),
	('Abella', 58, 6,59),
	('Adya', 52, 7,60),
	('Barra', 45, 5,61),
	('Abgao', 36, 4,62),
	('Bical', 47, 7,63),
	('Baritan', 39, 4,64),
	('Kulaman', 74, 7,65),
	('Lugam', 63, 8,66),
	('Bakilid', 85, 8,67),
	('Tampilong', 93, 9,68),
	('Parang', 41, 6,69),
	('Espinosa', 47, 7,71),
  	('Mamali', 85, 8,72),
  	('Tugatog', 96, 9,73),
  	('Balante', 63, 6,74),
  	('Buli', 87, 8,75),
	('Alpaco', 84, 8,76),
  	('Cararayan', 85, 8,77),
	('Daanghari', 93, 9,78),
	('Santa Rita', 54, 8,79),
	('Gaas', 25, 5,80),
	('Burgos', 74, 7,81),
	('Bagakay', 71, 7,82),
	('Maligaya', 28, 7,83),
	('Dapco', 62, 6,84),
	('Mulapula', 25, 5,85),
   	('Iwahig', 41, 4,86),
	('Bago', 17, 3,8, 87),
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
    ('Borja', 3, 1, 100),
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
    ('Garcia', 4, 3,3)
;
 
INSERT INTO register_person(person_fname, person_sname, person_age, person_gender, marital_status, person_occupation, family_id)
VALUES
	('Steven', 'Santos', 46, 'male', 'married', 'payment_specialist', 1),
	('Belle', 'Santos', 44, 'female', 'married', 'service_coordinator', 2),
	('Jodalyn', 'Santos', 22, 'female', 'single', 'college_student', 3),
	('Angel', 'Mondala', 26, 'female', 'married', 'chemical_engineer', 4),
	('Charles', 'Mondala', 29, 'male', 'married', 'chemical_engineer', 5),
	('Jefferson', 'Manlangit', 35, 'male', 'single', 'restaurant_manager', 6),
	('Aubrey', 'Diaz', 25, 'female', 'single', 'accountant', 7),
	('Michael', 'Aranete', 35, 'male', 'married', 'call_center_agent', 8),
	('Marthy', 'Aranete', 29, 'female', 'married', 'pharmacist', 9),
	('Jaycee', 'Lara', 26, 'female', 'married', 'professor', 10),
	('Sharie', 'Mendoza', 28, 'female', 'single', 'teacher', 11),
	('Rhobin', 'Faragones', 25, 'male', 'single', 'it_personnel', 12),
	('Jose', 'David', 35, 'male', 'married', 'barbeque_vendor', 13),
	('Ailyn', 'David', 36, 'female', 'married', 'barbeque_vendor', 14),
	('Arzel', 'David', 22, 'female', 'single', 'college_student', 15),
	('Jean', 'David', 19, 'female', 'single', 'college_student', 16),
	('Eusebio', 'Molina', 33, 'male', 'single', 'digital_artist', 17),
	('Yolanda', 'Borja', 54, 'female', 'married', 'vegetable_vendor', 18),
	('Arvie', 'Borja', 57, 'male', 'married', 'taxi_driver', 19),
	('Jordan', 'Borja', 34, 'male', 'married', 'it_specialist', 20),
	('Frances', 'Borja', 31, 'female', 'married', 'call_center_agent', 21),
	('Ezekiel', 'Borja', 14, 'male', 'single', 'student', 22),
	('Christyll', 'Reyes', 49, 'female', 'married', 'principal', 23),
	('Morris', 'Balmes', 45, 'male', 'married', 'bartender', 24),
	('Karra', 'Balmes' ,39, 'female', 'married', 'promodizer', 25),
	('Viel', 'Balmes', 17, 'male', 'single', 'student', 26),
	('Yanah', 'Balmes', 15, 'female', 'single', 'student', 27),
	('Simon', 'Balmes', 12, 'male', 'single', 'student', 28),
	('Royette', 'Corpuz', 44, 'male', 'married', 'electrician', 29),
	('Lovely', 'Corpuz', 41, 'female', 'married', 'tourist_guide', 30),
	('Ian', 'Corpuz', 21, 'male', 'single', 'college_student', 31),
	('Iya', 'Corpuz', 14, 'female', 'single', 'student', 32),
	('Patrick', 'Galvez', 24, 'male', 'single', 'blogger', 33),
	('Dianne', 'Dimajutoc', 27, 'female', 'single', 'nurse', 34),
	('Alvin', 'Fajardo', 39, 'male', 'married', 'data_encoder', 35),
	('Jonna', 'Fajardo', 40, 'female', 'married', 'system_administrator', 36),
	('Joseph', 'Fajardo', 19, 'male', 'single', 'college_student', 37),
	('Ara', 'Fajardo', 18, 'female', 'single', 'college_student', 38),
	('Mae', 'Fajardo', 10, 'female', 'single', 'student', 39),
	('Donald', 'De Luna', 38, 'male', 'married', 'programmer', 40),
	('Analyn', 'De Luna', 30, 'female', 'married', 'secretary', 41),
	('Heart', 'De Luna', 14, 'female', 'single', 'student', 42),
	('Daryll', 'De Luna', 18, 'male', 'single', 'student', 43),
	('Gerardo', 'Perez', 40, 'male', 'married', 'manager', 44),
	('Liza', 'Perez', 35, 'female', 'married', 'teacher', 45),
	('Tomas', 'Perez', 10, 'male', 'single', 'student', 46),
	('Allen', 'Perez', 17, 'male', 'single', 'student', 47),
	('Hilario', 'Pinpin', 60, 'male', 'married', 'seaman', 48),
	('Fe', 'Pinpin', 68, 'female', 'married', 'saleslady', 49),
	('Dexter', 'Pinpin', 35, 'male', 'married', 'seaman', 50),
	('Glenn', 'Pinpin', 30, 'male', 'single', 'doctor', 51),
	('Denver', 'Salazar', 38, 'male', 'married', 'technician', 52),
	('Daisy', 'Salazar', 57, 'female', 'married', 'supervisor', 53),
	('Carlo', 'Cruzada', 37, 'male', 'married', 'manager', 54),
	('Neri', 'Cruzada', 36, 'female', 'married', 'technician', 55),
	('Edna', 'Garcia', 44, 'female', 'married', 'school_principal', 56),
	('Ricky', 'Garcia', 49, 'male', 'married', 'artist', 57),
	('Karl', 'Garcia', 21, 'male', 'single', 'student', 58),
	('Danilo', 'Lugami', 51, 'male', 'married', 'technician', 59),
	('Rosalyn', 'Lugami', 46, 'female', 'married', 'secretary', 60),
	('Fritz', 'Lugami', 21, 'female', 'single', 'manager', 61),
	('Brent', 'Lugami', 14, 'female', 'single', 'student', 62),
	('Aladin', 'Ramos', 66, 'male', 'married', 'overseas worker', 63),
	('Kert', 'Ramos', 39, 'female', 'married', 'welder', 64),
	('Eugene', 'Ramos', 22, 'male', 'single', 'student', 65),
	('Eugine', 'Ramos', 20, 'male', 'single', 'student', 66),
	('Rick', 'Magbuhos', 70, 'male', 'married', 'driver', 67),
	('Yolly', 'Magbuhos', 65, 'female', 'married', 'vendor', 68),
	('Erick', 'Magbuhos', 15, 'male', 'single', 'student', 69),
	('Arnold', 'Aycardo', 41, 'male', 'married', 'driver', 70),
	('Mary_Joy', 'Aycardo', 34, 'female', 'married', 'overseas worker', 71),
	('Kim', 'Aycardo', 28, 'female', 'single', 'nurse', 72),
	('Leo', 'Sabandal', 42, 'male', 'married', 'welder', 73),
	('Melissa', 'Sabandal', 30, 'female', 'married', 'waitress', 74),
	('Innah', 'Sabandal', 20, 'female', 'single', 'teacher', 75),
	('Ryan', 'Tano', 42, 'male', 'married', 'police', 76),
	('Ruth', 'Tano', 29, 'female', 'married', 'nurse', 77),
	('James', 'Tano', 23, 'male', 'single', 'student', 78),
	('Michael', 'Millar', 22, 'male', 'married', 'programmer', 79),
	('Laini', 'Millar', 28, 'female', 'married', 'architect', 80),
	('Chalie', 'Millar', 13, 'female', 'single', 'student', 81),
	('Larry', 'Gines', 54, 'male', 'married', 'school principal', 82),
	('Mau', 'Gines', 33, 'female', 'married', 'teacher', 83),
	('Alexander', 'Gines', 22, 'male', 'single', 'student', 84),
	('Arthur', 'Gines', 22, 'male', 'single', 'student', 85),
	('Knight', 'Gines', 15, 'male', 'single', 'student', 86),
	('Lando', 'Magpantay', 54, 'male', 'married', 'manager', 87),
	('Lorie', 'Magpantay', 50, 'female', 'married', 'doctor', 88),
	('Itchel', 'Magpantay', 18, 'female', 'single', 'student', 89),
	('Antonio', 'Mojica', 69, 'male', 'married', 'pilot', 90),
	('Luz', 'Mojica', 45, 'female', 'married', 'teacher', 91),
	('Mark', 'Pineda', 22, 'male', 'married', 'programmer', 92),
	('Christine', 'Pineda', 36, 'female', 'married', 'cashier', 93),
	('Christian', 'Abrea', 54, 'male', 'married', 'engineer', 94),
	('Rica', 'Abrea', 45, 'female', 'married', 'lawyer', 95),
	('Dana', 'Abrea', 23, 'male', 'single', 'student', 96),
	('Bernard', 'Dimagiba', 54, 'male', 'married', 'driver', 97),
	('Patchi', 'Dimagiba', 50, 'female', 'married', 'teacher', 98),
	('Jj', 'Dimagiba', 30, 'male', 'single', 'student', 99),
	('John', 'Atayde', 30, 'male', 'married', 'driver', 100),
	('Kimberly', 'Atayde', 30, 'female', 'married', 'manicurist', 101),
	('Ray', 'Atayde', 11, 'male', 'single', 'student', 102),
	('Kim', 'Tividad', 54, 'male', 'married', 'engineer', 103),
	('Kiara', 'Tividad', 33, 'female', 'married', 'architect', 104),
	('Johna', 'Tividad', 22, 'female', 'single', 'nurse', 105),
	('Lonard', 'Orodio', 54, 'male', 'married', 'delivery boy', 106),
	('Hazel', 'Orodio', 34, 'female', 'married', 'technician', 107),
	('Roxan', 'Orodio', 18, 'female', 'single', 'student', 108),
	('Sophia', 'Paglinawan', 22, 'female', 'married', 'manager', 109),
	('Maxwell', 'Paglinawan', 30, 'male', 'married', 'engineer', 110),
	('Abdul', 'Mangurun', 54, 'male', 'married', 'driver', 111),
	('Mikaela', 'Mangurun', 40, 'female', 'married', 'lawyer', 112),
	('James', 'Mangurun', 20, 'male', 'single', 'student', 113),
	('Sean', 'Manganti', 30, 'male', 'married', 'electrician', 114),
	('Kianna', 'Manganti', 29, 'female', 'married', 'architect', 115),
	('Darwin', 'Manganti', 13, 'male', 'single', 'student', 116),
	('Joven', 'Fabricante', 59, 'male', 'married', 'engineer', 117),
	('Maricar', 'Fabricante', 45, 'female', 'married', 'programmer', 118),
	('Maria', 'Fabricante', 14, 'female', 'single', 'student', 119),
	('Jose', 'Tabla', 45, 'male', 'married', 'chef', 120),
	('Karla', 'Tabla', 34, 'female', 'married', 'manicurist', 121),
	('Stephen', 'Tabla', 23, 'male', 'single', 'student', 122),
	('Kimberly', 'Tabla', 17 , 'female', 'single', 'student', 123),
	('Mark Stephen', 'Arquero', 30, 'male', 'married', 'programmer', 124),
	('Joanna', 'Arquero', 27, 'female', 'married', 'nurse', 125),
	('Niko', 'Fordan', 31, 'male', 'married', 'engineer', 126),
	('Sheila', 'Fordan', 35, 'female', 'married', 'teacher', 127),
	('Joshua', 'Nunez', 24, 'male', 'married', 'driver', 128),
	('Dianne', 'Nunez', 28, 'female', 'married', 'vendor', 129),
	('Reynaldo', 'Nunez', 11, 'male', 'single', 'student', 130),
	('Ramon', 'Nofies', 52, 'male', 'married', 'electrician', 131),
	('Lexi', 'Nofies', 42, 'female', 'married', 'engineer', 132),
	('Karmen', 'Nofies', 19, 'female', 'single', 'student', 133),
	('Alyssa', 'Yap', 32, 'female', 'married', 'waitress', 134),
	('Raymond', 'Yap', 33, 'male', 'married', 'carpenter', 135),
	('Keann', 'Yap', 12, 'male', 'single', 'student', 136),
	('Mark', 'Razon', 50, 'male', 'married', 'welder', 137),
	('Bianca', 'Razon', 56, 'female', 'married', 'saleslady', 138),
	('Relz', 'Razon', 22, 'male', 'single', 'student', 139),
	('Bernard', 'Aquino', 58, 'male', 'married', 'driver', 140),
	('Yhan', 'Aquino', 44, 'female', 'married', 'manicurist', 141),
	('Ramon', 'Aquino', 23, 'male', 'single', 'student', 142),
	('Aaron', 'Abinoja', 37, 'male', 'married', 'waiter', 143),
	('Jolyn', 'Abinoja', 34, 'female', 'married', 'nurse', 144),
	('Sean', 'Abinoja', 16, 'male', 'single', 'student', 145),
	('Chalie', 'Dimayuga', 32, 'female', 'married', 'bartender', 146),
	('Paul', 'Dimayuga', 30, 'male', 'married', 'security guard', 147),
	('Jopat', 'Dimayuga', 12, 'male', 'single', 'student', 148),
	('Irvin', 'Chavez', 30, 'male', 'married', 'school principal', 149),
	('Bianca', 'Chavez', 25, 'female', 'married', 'teacher', 150),
	('Jhonathan', 'Chavez', 9, 'male', 'married', 'student', 151),
	('Nhald', 'Cortez', 50, 'male', 'married', 'carpenter', 152),
	('Merlie', 'Cortez', 43, 'female', 'married', 'painter', 153),
	('Apyong', 'Cortez', 21, 'male', 'single', 'student', 154),
	('Miguel', 'Arevalo', 64, 'male', 'married', 'waiter', 155),
	('Roselyn', 'Arevalo', 54, 'female', 'married', 'overseas worker', 156),
	('Andrea', 'Arevalo', 26, 'female', 'single', 'therapist', 157),
	('Albert', 'Dela Cruz', 44, 'male', 'married', 'librarian', 158),
	('Patricia', 'Dela Cruz', 34, 'female', 'married', 'overseas worker', 159),
	('Jj', 'Dela Cruz', 20, 'male', 'single', 'student', 160),
	('Briant', 'Dela Serna', 60, 'male', 'married', 'driver', 161),
	('Aliana', 'Dela Serna', 56, 'female', 'married', 'vendor', 162),
	('Lawrence', 'Dela Serna', 30, 'male', 'single', 'student', 163),
	('Kiel', 'Donaire', 39, 'male', 'married', 'security guard', 164),
	('Sam', 'Donaire', 40, 'female', 'married', 'teacher', 165),
	('Melissa', 'Donaire', 22, 'female', 'single', 'student', 166),
	('Martina', 'Martinez', 60, 'female', 'married', 'chef', 167),
	('Andrew', 'Martinez', 54, 'male', 'married', 'programmer', 168),
	('Cherry', 'Martinez', 25, 'female', 'single', 'student', 169),
	('Paolo', 'Ong', 42, 'male', 'married', 'driver', 170),
	('Rhenna', 'Ong', 30, 'female', 'married', 'teacher', 171),
	('Erwin', 'Ong', 11, 'male', 'single', 'student', 172),
	('Calvin', 'Medina', 54, 'male', 'married', 'programmer', 173),
	('Liezel', 'Medina', 33, 'female', 'married', 'teacher', 174),
	('Dominic', 'Medina', 54, 'male', 'single', 'student', 175),
	('Jerom', 'Santiago', 57, 'male', 'married', 'electrician', 176),
	('Danica', 'Santiago', 44, 'female', 'married', 'cashier', 177),
	('Louise', 'Santiago', 18, 'female', 'single', 'student', 178),
	('John', 'Torres', 24, 'male', 'married', 'driver', 179),
	('Marian', 'Torres', 29, 'female', 'married', 'overseas worker', 180),
	('Marie', 'Torres', 5, 'male', 'single', 'student', 181),
	('Nelson', 'Bautista', 54, 'male', 'married', 'technician', 182),
	('Anne', 'Bautista', 50, 'female', 'married', 'bartender', 183),
	('Elaine', 'Bautista', 22, 'female', 'single', 'student', 184),
	('Emman', 'Santelices', 48, 'male', 'married', 'security guard', 185),
	('Noelyn', 'Santelices', 39, 'female', 'married', 'teacher', 186),
	('Marivic', 'Santelices', 17, 'female', 'single', 'student', 187),
	('Jaime', 'Suarez', 54, 'male', 'married', 'reporter', 188),
	('Franchine', 'Suarez', 54, 'female', 'married', 'vendor', 189),
	('Mae', 'Suarez', 23, 'female', 'single', 'student', 190),
	('Nick', 'Maligaya', 43, 'male', 'married', 'welder', 191),
	('Beyonce', 'Maligaya', 36, 'female', 'married', 'vendor', 192),
	('Dana', 'Maligaya', 22, 'female', 'single', 'student', 193),
	('Earl', 'Ferrer', 62, 'male', 'married', 'pilot', 194),
	('Trixie', 'Ferrer', 54, 'female', 'married', 'manicurist', 195),
	('Angel', 'Ferrer', 26, 'female', 'single', 'student', 196),
	('Atkins', 'Villanueva', 38, 'male', 'married', 'teacher', 197),
	('Princess', 'Villanueva', 35, 'female', 'married', 'nurse', 198),
	('Joyce', 'Villanueva', 19, 'female', 'single', 'student', 199),
	('Joseph', 'Vergara', 43, 'male', 'married', 'carpenter', 200),
	('Joy', 'Vergara', 40, 'female', 'married', 'architect', 201),
	('Yasmine', 'Vergara', 26, 'female', 'single', 'student', 202),
	('Gabriel', 'Dasig', 44, 'male', 'married', 'reporter', 203),
	('Jasmine', 'Dasig', 44, 'female', 'married', 'musician', 204),
	('Catherine', 'Dasig', 23, 'female', 'single', 'student', 205),
	('Willie', 'Serna', 61, 'female','married', 'senior_citizen', 206),
        ('Luloy', 'Serna', 63, 'male', 'married', 'senior_citizen', 207),
        ('Arnie', 'Serna', 33, 'female', 'single', 'sales_lady', 208),
        ('Dodong', 'Serna', 30, 'male', 'single', 'safety_coordinator', 209),
        ('Leslie', 'Pelaez', 34, 'female', 'married', 'area_manager', 210),
        ('Christopher', 'Pelaez', 36, 'male', 'married', 'security_guard', 211),
        ('Isabela', 'Pelaez', 10, 'female', 'single', 'student', 212),
        ('Shirland', 'Habon', 25, 'male', 'single', 'janitor', 213),
        ('Shalee', 'Caranto', 30, 'female', 'married', 'marketing_manager', 214),
        ('Jeremy', 'Caranto', 31, 'male', 'married', 'civil_engineer', 215),
        ('Anabelle', 'Medina', 24, 'female', 'single', 'service_crew', 216),
        ('Eduard', 'Monguez', 25, 'male', 'single', 'collector', 217),
        ('Ronnie', 'Campos', 45, 'male', 'married', 'jeepney_driver', 218),
        ('Aurora', 'Campos', 43, 'female', 'married', 'admin_officer', 219),
        ('Kyle', 'Campos', 19, 'male', 'single', 'college_student', 220),
        ('Josh', 'Campos', 15, 'male', 'single', 'student', 221),
        ('Esther', 'Maranan', 25, 'female', 'single', 'secretary', 222),
        ('Rachelle', 'Abrenica', 28, 'female', 'married', 'editor_in_chief', 223),
        ('Shane', 'Abrenica', 30, 'male', 'married', 'chef', 224),
        ('Jovelyn', 'Mejia', 27, 'female', 'married', 'casino_dealer', 225),
        ('Nicole', 'Mejia', 7, 'female', 'single', 'student', 226),
        ('Evo', 'Mejia', 6, 'male', 'single', 'student', 227),
        ('Rhea', 'Paz', 38, 'female', 'married', 'housewife', 228),
        ('Jonathan', 'Paz', 42, 'male', 'married', 'construction_worker', 229),
        ('Chloe', 'Paz', 8, 'female', 'single', 'student', 230),
        ('Kate', 'Paz', 12, 'female', 'single', 'student', 231),
        ('Ken', 'Smith', 34, 'male', 'married', 'doctor', 232),
        ('Zoey', 'Smith', 34, 'female', 'married', 'artist', 233),
        ('Rufo', 'Abenales', 26, 'male', 'single', 'assistant_engineer', 234),
        ('Mark', 'Abenales', 67, 'male', 'widow', 'senior_citizen', 235),
        ('Jasmine', 'Cello', 22, 'female', 'single', 'cashier', 236),
        ('Melody', 'Sanchez', 21, 'female', 'single', 'cashier', 237),
        ('Kimberly', 'Monzon', 29, 'female', 'married', 'waitress', 238),
        ('Gerald', 'Monzon', 32, 'male', 'married', 'cook', 239),
        ('Shiela', 'Monzon', 5, 'female', 'single', 'not_yet_student', 240),
        ('Rowena', 'Alota', 32, 'feamle', 'married', 'online_seller', 241),
        ('Mjeck', 'Alota', 35, 'male', 'married', 'policeman', 242),
        ('Jeron', 'Alota', 6, 'male', 'single', 'student', 243),
        ('Jeck', 'Dayu', 27, 'male', 'single', 'call_center_agent', 244),
        ('Juvilyn', 'Yalong', 25, 'female', 'single', 'biologist', 245),
        ('Antonette', 'Villarin', 25, 'female', 'single', 'sales_coordinator', 246),
        ('Fatima', 'Velasco', 47, 'female', 'married', 'online_teacher', 247),
        ('Jerric', 'Velasco', 50, 'male', 'married', 'camera_man', 248),
        ('Joseph', 'Velasco', 15, 'male', 'single', 'student', 249),
        ('Felissa', 'Velasco', 17, 'male', 'single', 'student', 250),
        ('Jema', 'Velasco', 24, 'female', 'single', 'architect', 251),
        ('Jamaica', 'Sagun', 23, 'female', 'single', 'hr_admin', 252),
        ('Agatha', 'Sagun', 20, 'female', 'single', 'college_student', 253),
        ('Joanne', 'Sagun', 43, 'female', 'widow', 'call_center_agent', 254),
        ('Ligaya', 'Perez', 61, 'female', 'married', 'senior_citizen', 255),
        ('Ben', 'Perez', 65, 'male', 'married', 'senior_citizen', 256),
        ('Abigail', 'Perez', 44, 'female', 'single', 'teacher', 257),
        ('Eunice', 'Villanueva', 21, 'female', 'single', 'vocalist', 258),
        ('Adonis', 'Bautista', 22, 'male', 'single', 'waiter', 259),
        ('Mikaela', 'Alimento', 34, 'female', 'married', 'fish_vendor', 260),
        ('Michael', 'Alimento', 37, 'male', 'married', 'messenger', 261),
        ('Cassandra', 'Cruz', 23, 'female', 'single', 'receptionist', 262),
        ('Carla', 'Urtula', 27, 'female', 'single', 'receptionist', 263),
        ('Felix', 'Dantes', 35, 'male', 'married', 'manager', 264),
        ('Marie', 'Dantes', 31, 'female', 'married', 'writer', 265),
        ('Malia', 'Dantes', 16, 'female', 'single', 'student', 266),
        ('Jack', 'Garcia', 41, 'male', 'widow', 'assistant_manager', 267),
        ('Kath', 'Garcia', 23, 'female', 'single', 'college_student', 268),
        ('Daniel', 'Garcia', 18, 'female', 'single', 'college_student', 269),
	('Lala', 'Garcia', 16, 'female', 'single', 'student', 270)
;

#PERSON__________________________________________________________________________________________________________________________  
drop procedure RegisterPerson;
DELIMITER &&
CREATE PROCEDURE RegisterPerson(in fname varchar(255), in surname varchar(255), in age int, in gender varchar(255),in m_status varchar(255), in occupation varchar(255))
	BEGIN
    INSERT INTO register_person(person_fname, person_sname, person_age, person_gender, marital_status, person_occupation)
    VALUES
		(fname, surname, age, gender, m_status, occupation);
    END &&
DELIMITER ;
CALL RegisterPerson('Beatriz', 'Gomez', 75, 'female', 'married', 'retired');

drop procedure ViewPerson;
DELIMITER &&
CREATE PROCEDURE ViewPerson()
	BEGIN
    SELECT person_fname, person_sname, person_age, person_gender, marital_status, person_occupation
    FROM register_person;
    END &&
DELIMITER ;
CALL ViewPerson();

DELIMITER && 
CREATE PROCEDURE UpdatePerson(in fname varchar(255), in surname varchar(255), in age int, in gender varchar(255),in m_status varchar(255), in occupation varchar(255), in p_id int)
	BEGIN
    UPDATE register_person
	SET 
		person_fname = fname,
        person_sname = surname,
        person_age = age,
        person_gender = gender,
        marital_status = m_status,
        person_occupation = occupation
	WHERE person_id = p_id;
    END &&
DELIMITER ;
CALL UpdatePerson('Catherine', 'Dasig', 24, 'female', 'single', 'student', 205);

DELIMITER &&
CREATE PROCEDURE DeletePersonById(in p_id int)
	BEGIN
    DELETE FROM register_person
	WHERE 
		person_id = p_id;
    END &&
DELIMITER ;
CALL DeletePersonById(205);

#CITY____________________________________________________________________________________________________________________________________________________________
drop procedure RegisterCity;
DELIMITER &&
CREATE PROCEDURE RegisterCity(in city_name varchar(255), in city_population int, in num_of_family int)
	BEGIN
    INSERT INTO register_city_name(city_name, city_population, num_family_c)
    VALUES
		(city_name, city_population, num_of_family);
    END &&
DELIMITER ;
CALL RegisterCity('new york',1,2);

drop procedure ViewCity;
DELIMITER &&
CREATE PROCEDURE ViewCity()
	BEGIN
    SELECT city_name, city_population, num_family_c
    FROM register_city_name;
    END &&
DELIMITER ;
CALL ViewCity();

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
CALL DeleteCityById();

#Barangay______________________________________________________________________________________________________________________
drop procedure RegisterBrgy;     
DELIMITER &&
CREATE PROCEDURE RegisterBrgy(in brgy_name varchar(255), in brgy_population int, in num_of_family int, in c_id int)
	BEGIN
    INSERT INTO register_barangay(barangay_name, barangay_population, num_family_b, city_id)
	VALUES
		(brgy_name, brgy_population, num_of_family, c_id);
    END &&
DELIMITER ;
CALL RegisterBrgy('Poblacion',4,2);

drop procedure ViewBrgy;
DELIMITER &&
CREATE PROCEDURE ViewBrgy()
	BEGIN
    SELECT barangay_name, barangay_population, num_family_b, city_id
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
CALL DeleteBrgyById();

#family__________________________________________________________________________________________________________________________
drop procedure RegisterFamily;     
DELIMITER &&
CREATE PROCEDURE RegisterFamily(in fam_name varchar(255), in fam_size int, in num_of_children int, in brgy_id int)
	BEGIN
    INSERT INTO register_family_name(family_name, family_size, num_children, barangay_id)
	VALUES
		(fam_name, fam_size, num_of_children, brgy_id);
    END &&
DELIMITER ;
CALL RegisterFamily('Rasay',4,2,1);

drop procedure ViewFamily;
DELIMITER &&
CREATE PROCEDURE ViewFamily()
	BEGIN
    SELECT family_name, family_size, num_children
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
CALL UpdateFamilyById('',1,1,1);    

drop procedure DeleteFamilyById;
DELIMITER &&
CREATE PROCEDURE DeleteFamilyById(in fam_id int)
	BEGIN
    DELETE FROM register_family_name
	WHERE family_id = fam_id;
    END &&
DELIMITER ;
CALL DeleteFamilyById();

    
    
