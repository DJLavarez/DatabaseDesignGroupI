create database DatabaseGroupI;
use DatabaseGroupI;

drop table register_city_name;
create table register_city_name(
    city_id int auto_increment primary key,
    city_name varchar(255),
    city_population int,
    num_family_c int,
);

drop table register_barangay;
create table register_barangay(
    barangay_id int auto_increment primary key,
    barangay_name varchar(255),
    barangay_population int,
    num_family_b int,
    foreign key(city_id)
    	references register_city_name(city_id)
);

drop table register_family_name;
create table register_family_name(
    family_id int auto_increment primary key,
    family_name varchar(255),
    family_size int,
    num_children int,
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
    person_occupation varchar(255)
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
    ('Meycauayan' 54, 21,),
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

INSERT INTO register_barangay(barangay_name, barangay_population, num_family_b)
VALUES
	('Brgy. 89', 22, 3),
	('Brgy. 105', 33, 6),
	('Commonwealth',45 , 5),
	('Bukal', 54, 9),
	('Poblacion 1', 93, 4),
	('Addition hills', 78, 2),
	('San antonio', 87, 6),
	('Santa Cruz', 87, 6),
	('Lower Bicutan', 73, 8),
	('Binondo', 73, 3),
	('West Rembo', 66, 4),
	('Neogan', 72, 8),
	('Don Bosco', 65, 5),
	('Hen. M. Trias', 31, 4),
	('Paril', 52, 2),
	('Lanzonesa', 26, 3),
	('Balite', 12, 5),
	('Lapasan', 48, 6),
	('Talomo', 63, 9),
	('Pantal', 35, 7),
	('Vicoria', 98, 9),
	('Pulungbulu', 84, 8),
	('San Roque', 99, 9),
	('Montevista', 51, 7),
	('Molino 5', 26, 8),
	('Caridad', 48, 9),
	('Lualhati', 62, 5),
	('Panala-an', 36, 6),
	('Tanato', 43, 8),
	('Brgy 21', 26, 4),
	('Narra', 84, 8),
	('Baybay', 35, 7),
	('Mabuhay', 41, 6),
	('Sto. Tomas', 87, 9),
	('Antongalon', 85, 8),
	('Banlic', 96, 9),
	('Pula', 25, 5),
	('Buyon', 47, 6),
	('Oro', 63, 8),
	('Victoria Reyes', 25, 5),
	('Galas', 35, 7),
	('Banilad', 74, 8),
	('Escalante', 44, 4),
	('Bulak', 48, 6),
	('Ligaya', 28, 3),
	('Talisay', 62, 6),
	('Guinatan', 82, 8),
	('Dalipuga', 47, 4),
	('Bayan Luma', 82, 8),
	('Francia', 83, 8),
	('Aguada', 57, 5),
	('Amas', 25, 5),
	('Morales', 25, 5),
	('Arco', 74, 7),
	('San Lorenzo', 72, 7),
	('Agus', 39, 4),
	('Almanza uno', 25, 5),
	('Sagpon', 87, 7),
	('Abella', 58, 6),
	('Adya', 52, 7),
	('Barra', 45, 5),
	('Abgao', 36, 4),
	('Bical', 47, 7),
	('Baritan', 39, 4),
	('Kulaman', 74, 7),
	('Lugam', 63, 8),
	('Bakilid', 85, 8),
	('Tampilong', 93, 9),
	('Parang', 41, 6),
	('Espinosa', 47, 7),
  	('Mamali', 85, 8),
  	('Tugatog', 96, 9),
  	('Balante', 63, 6),
  	('Buli', 87, 8),
	('Alpaco', 84, 8),
  	('Cararayan', 85, 8),
	('Daanghari', 93, 9),
	('Santa Rita', 54, 8),
	('Gaas', 25, 5),
	('Burgos', 74, 7),
	('Bagakay', 71, 7),
	('Maligaya', 28, 7),
	('Dapco', 62, 6),
	('Mulapula', 25, 5),
   	('Iwahig', 41, 4),
	('Bago', 17, 3),
	('Baviera', 28, 7),
	('Adecor', 93, 9),
	('Panipuan', 53, 8),
	('Progreso', 28, 7),
	('Ibaba', 21, 7),
	('Balogo', 62, 6),
	('Nonoc', 63, 8),
	('Cabalawan', 85, 5),
	('Ubujan', 85, 5),
	('Cale', 25, 5),
	('Suizo', 85, 8),
	('Leonarda', 63, 8),
	('Parada', 25, 5),
	('Raois', 47, 7),
	('Lumbo', 83, 8)
;

INSERT INTO register_family_name(family_name, family_size, num_children)
VALUES
    ('Santos', 3, 1),
    ('Mondala', 2, 0),
    ('Manlangit', 1, 0),
    ('Diaz', 1, 0),
    ('Aranete', 2, 0),
    ('Lara', 1, 0),
    ('Mendoza', 1, 0),
    ('Faragones', 1, 0),
    ('David', 4, 2),
    ('Molina', 1, 0),
    ('Borja', 3, 1),
    ('Borja', 3, 1),
    ('Reyes', 1, 0),
    ('Balmes', 5, 3),
    ('Corpuz', 4, 2),
    ('Galvez', 1, 0),
    ('Dimajutoc', 1, 0),
    ('Fajardo', 5, 3),
    ('De Luna',4,2),
    ('Perez', 4,2),
    ('Pinpin', 4, 2),
    ('Salazar', 2, 0),
    ('Cruzada', 2, 0),
    ('Garcia', 3, 1),
    ('Lugami', 4, 2),
    ('Ramos', 4, 2),
    ('Magbuhos', 3, 1),
    ('Aycardo', 3, 1),
    ('Sabandal', 3, 1),
    ('Tano', 3, 1),
    ('Millar', 3, 1),
    ('Gines', 5, 3),
    ('Magpantay', 3, 1),
    ('Mojica', 2, 0),
    ('Pineda', 2, 0),
    ('Abrea', 3, 1),
    ('Dimagiba', 3, 1),
    ('Atayde', 3, 1),
    ('Tividad', 3, 1),
    ('Orodio', 3, 1),
    ('Mangurun', 3, 1),
    ('Paglinawan', 2, 0),
    ('Manganti', 3, 1),
    ('Fabricante', 3, 1),
    ('Tabla', 4, 2),
    ('Arquero', 1, 0),
    ('Fordan', 2, 0),
    ('Nunez', 3, 1),
    ('Nofies', 3, 1),
    ('Yap', 3, 1),
    ('Razon', 3, 1),
    ('Aquino', 3, 1),
    ('Abinoja', 3, 1),
    ('Dimayuga', 3, 1),
    ('Chavez', 3, 1),
    ('Cortez', 3, 1),
    ('Arevalo', 3, 1),
    ('Dela Cruz', 3, 1),
    ('Dela Serna', 3, 1),
    ('Donaire', 3, 1),
    ('Martinez', 3, 1),
    ('Ong', 3, 1),
    ('Medina', 3, 1),
    ('Santiago', 3, 1),
    ('Torres', 3, 1),
    ('Bautista', 3, 1),
    ('Santelices', 3, 1),
    ('Suarez', 3, 1),
    ('Maligaya', 3, 1),
    ('Ferrer', 3, 1),
    ('Villanueva', 3, 1),
    ('Vergara', 3, 1),
    ('Dasig', 3, 1),
    ('Serna', 4, 2),
    ('Pelaez', 3, 1),
    ('Habon', 1, 0),
    ('Caranto', 2, 0),
    ('Medina', 1, 0),
    ('Monguez', 1, 0),
    ('Campos', 4, 2),
    ('Maranan', 1, 0),
    ('Abrenica', 2, 0),
    ('Mejia', 3, 2),
    ('Paz', 4, 2),
    ('Smith', 2, 0),
    ('Abenales', 2, 1),
    ('Cello', 1, 0),
    ('Sanchez', 1, 0),
    ('Monzon', 3, 1),
    ('Alota', 3, 1),
    ('Dayu', 1, 0),
    ('Yalong', 1, 0),
    ('Villarin', 1, 0),
    ('Velasco', 5, 3),
    ('Sagun', 3, 2),
    ('Perez', 3, 1),
    ('Villanueva', 1, 0),
    ('Bautista', 1, 0),
    ('Alimento', 2, 0),
    ('Cruz', 1, 0),
    ('Urtula', 1, 0),
    ('Dantes', 3, 1),
    ('Garcia', 3, 2)
;
 
INSERT INTO register_person(person_fname, person_sname, person_age, person_gender, marital_status,
person_occupation)
VALUES
('Steven', 'Santos', 46, 'male', 'married', 'payment_specialist'),
('Belle', 'Santos', 44, 'female', 'married', 'service_coordinator'),
('Jodalyn', 'Santos', 22, 'female', 'single', 'college_student' ),
('Angel', 'Mondala', 26, 'female', 'married', 'chemical_engineer' ),
('Charles', 'Mondala', 29, 'male', 'married', 'chemical_engineer' ),
('Jefferson', 'Manlangit', 35, 'male', 'single', 'restaurant_manager' ),
('Aubrey', 'Diaz', 25, 'female', 'single', 'accountant' ),
('Michael', 'Aranete', 35, 'male', 'married', 'call_center_agent' ),
('Marthy', 'Aranete', 29, 'female', 'married', 'pharmacist' ),
('Jaycee', 'Lara', 26, 'female', 'married', 'professor' ),
('Sharie', 'Mendoza', 28, 'female', 'single', 'teacher' ),
('Rhobin', 'Faragones', 25, 'male', 'single', 'it_personnel' ),
('Jose', 'David', 35, 'male', 'married', 'barbeque_vendor' ),
('Ailyn', 'David', 36, 'female', 'married', 'barbeque_vendor' ),
('Arzel', 'David', 22, 'female', 'single', 'college_student' ),
('Jean', 'David', 19, 'female', 'single', 'college_student' ),
('Eusebio', 'Molina', 33, 'male', 'single', 'digital_artist' ),
('Yolanda', 'Borja', 54, 'female', 'married', 'vegetable_vendor' ),
('Arvie', 'Borja', 57, 'male', 'married', 'taxi_driver' ),
('Jordan', 'Borja', 34, 'male', 'married', 'it_specialist' ),
('Frances', 'Borja', 31, 'female', 'married', 'call_center_agent' ),
('Ezekiel', 'Borja', 14, 'male', 'single', 'student' ),
('Christyll', 'Reyes', 49, 'female', 'married', 'principal' ),
('Morris', 'Balmes', 45, 'male', 'married', 'bartender' ),
('Karra', 'Balmes' ,39, 'female', 'married', 'promodizer' ),
('Viel', 'Balmes', 17, 'male', 'single', 'student' ),
('Yanah', 'Balmes', 15, 'female', 'single', 'student' ),
('Simon', 'Balmes', 12, 'male', 'single', 'student' ),
('Royette', 'Corpuz', 44, 'male', 'married', 'electrician' ),
('Lovely', 'Corpuz', 41, 'female', 'married', 'tourist_guide' ),
('Ian', 'Corpuz', 21, 'male', 'single', 'college_student' ),
('Iya', 'Corpuz', 14, 'female', 'single', 'student' ),
('Patrick', 'Galvez', 24, 'male', 'single', 'blogger' ),
('Dianne', 'Dimajutoc', 27, 'female', 'single', 'nurse' ),
('Alvin', 'Fajardo', 39, 'male', 'married', 'data_encoder' ),
('Jonna', 'Fajardo', 40, 'female', 'married', 'system_administrator' ),
('Joseph', 'Fajardo', 19, 'male', 'single', 'college_student' ),
('Ara', 'Fajardo', 18, 'female', 'single', 'college_student' ),
('Mae', 'Fajardo', 10, 'female', 'single', 'student' ),
('Donald', 'De Luna', 38, 'male', 'married', 'programmer'),
('Analyn', 'De Luna', 30, 'female', 'married', 'secretary'),
('Heart', 'De Luna', 14, 'female', 'single', 'student'),
('Daryll', 'De Luna', 18, 'male', 'single', 'student'),
('Gerardo', 'Perez', 40, 'male', 'married', 'manager'),
('Liza', 'Perez', 35, 'female', 'married', 'teacher'),
('Tomas', 'Perez', 10, 'male', 'single', 'student'),
('Allen', 'Perez', 17, 'male', 'single', 'student'),
('Hilario', 'Pinpin', 60, 'male', 'married', 'seaman'),
('Fe', 'Pinpin', 68, 'female', 'married', 'saleslady'),
('Dexter', 'Pinpin', 35, 'male', 'married', 'seaman'),
('Glenn', 'Pinpin', 30, 'male', 'single', 'doctor'),
('Denver', 'Salazar', 38, 'male', 'married', 'technician'),
('Daisy', 'Salazar', 57, 'female', 'married', 'supervisor'),
('Carlo', 'Cruzada', 37, 'male', 'married', 'manager'),
('Neri', 'Cruzada', 36, 'female', 'married', 'technician'),
('Edna', 'Garcia', 44, 'female', 'married', 'school_principal'),
('Ricky', 'Garcia', 49, 'male', 'married', 'artist'),
('Karl', 'Garcia', 21, 'male', 'single', 'student'),
('Danilo', 'Lugami', 51, 'male', 'married', 'technician'),
('Rosalyn', 'Lugami', 46, 'female', 'married', 'secretary'),
('Fritz', 'Lugami', 21, 'female', 'single', 'manager'),
('Brent', 'Lugami', 14, 'female', 'single', 'student'),
('Aladin', 'Ramos', 66, 'male', 'married', 'overseas worker'),
('Kert', 'Ramos', 39, 'female', 'married', 'welder'),
('Eugene', 'Ramos', 22, 'male', 'single', 'student'),
('Eugine', 'Ramos', 20, 'male', 'single', 'student'),
('Rick', 'Magbuhos', 70, 'male', 'married', 'driver'),
('Yolly', 'Magbuhos', 65, 'female', 'married', 'vendor'),
('Erick', 'Magbuhos', 15, 'male', 'single', 'student'),
('Arnold', 'Aycardo', 41, 'male', 'married', 'driver'),
('Mary_Joy', 'Aycardo', 34, 'female', 'married', 'overseas worker'),
('Kim', 'Aycardo', 28, 'female', 'single', 'nurse'),
('Leo', 'Sabandal', 42, 'male', 'married', 'welder'),
('Melissa', 'Sabandal', 30, 'female', 'married', 'waitress'),
('Innah', 'Sabandal', 20, 'female', 'single', 'teacher'),
('Ryan', 'Tano', 42, 'male', 'married', 'police'),
('Ruth', 'Tano', 29, 'female', 'married', 'nurse'),
('James', 'Tano', 23, 'male', 'single', 'student'),
('Michael', 'Millar', 22, 'male', 'married', 'programmer'),
('Laini', 'Millar', 28, 'female', 'married', 'architect'),
('Chalie', 'Millar', 13, 'female', 'single', 'student'),
('Larry', 'Gines', 54, 'male', 'married', 'school principal'),
('Mau', 'Gines', 33, 'female', 'married', 'teacher'),
('Alexander', 'Gines', 22, 'male', 'single', 'student'),
('Arthur', 'Gines', 22, 'male', 'single', 'student'),
('Knight', 'Gines', 15, 'male', 'single', 'student'),
('Lando', 'Magpantay', 54, 'male', 'married', 'manager'),
('Lorie', 'Magpantay', 50, 'female', 'married', 'doctor'),
('Itchel', 'Magpantay', 18, 'female', 'single', 'student'),
('Antonio', 'Mojica', 69, 'male', 'married', 'pilot'),
('Luz', 'Mojica', 45, 'female', 'married', 'teacher'),
('Mark', 'Pineda', 22, 'male', 'married', 'programmer'),
('Christine', 'Pineda', 36, 'female', 'married', 'cashier'),
('Christian', 'Abrea', 54, 'male', 'married', 'engineer'),
('Rica', 'Abrea', 45, 'female', 'married', 'lawyer'),
('Dana', 'Abrea', 23, 'male', 'single', 'student'),
('Bernard', 'Dimagiba', 54, 'male', 'married', 'driver'),
('Patchi', 'Dimagiba', 50, 'female', 'married', 'teacher'),
('Jj', 'Dimagiba', 30, 'male', 'single', 'student'),
('John', 'Atayde', 30, 'male', 'married', 'driver'),
('Kimberly', 'Atayde', 30, 'female', 'married', 'manicurist'),
('Ray', 'Atayde', 11, 'male', 'single', 'student'),
('Kim', 'Tividad', 54, 'male', 'married', 'engineer'),
('Kiara', 'Tividad', 33, 'female', 'married', 'architect'),
('Johna', 'Tividad', 22, 'female', 'single', 'nurse'),
('Lonard', 'Orodio', 54, 'male', 'married', 'delivery boy'),
('Hazel', 'Orodio', 34, 'female', 'married', 'technician'),
('Roxan', 'Orodio', 18, 'female', 'single', 'student'),
('Sophia', 'Paglinawan', 22, 'female', 'married', 'manager'),
('Maxwell', 'Paglinawan', 30, 'male', 'married', 'engineer'),
('Abdul', 'Mangurun', 54, 'male', 'married', 'driver'),
('Mikaela', 'Mangurun', 40, 'female', 'married', 'lawyer'),
('James', 'Mangurun', 20, 'male', 'single', 'student'),
('Sean', 'Manganti', 30, 'male', 'married', 'electrician'),
('Kianna', 'Manganti', 29, 'female', 'married', 'architect'),
('Darwin', 'Manganti', 13, 'male', 'single', 'student'),
('Joven', 'Fabricante', 59, 'male', 'married', 'engineer'),
('Maricar', 'Fabricante', 45, 'female', 'married', 'programmer'),
('Maria', 'Fabricante', 14, 'female', 'single', 'student'),
('Jose', 'Tabla', 45, 'male', 'married', 'chef'),
('Karla', 'Tabla', 34, 'female', 'married', 'manicurist'),
('Stephen', 'Tabla', 23, 'male', 'single', 'student'),
('Kimberly', 'Tabla', 17 , 'female', 'single', 'student'),
('Mark Stephen', 'Arquero', 30, 'male', 'married', 'programmer'),
('Joanna', 'Arquero', 27, 'female', 'married', 'nurse'),
('Niko', 'Fordan', 31, 'male', 'married', 'engineer'),
('Sheila', 'Fordan', 35, 'female', 'married', 'teacher'),
('Joshua', 'Nunez', 24, 'male', 'married', 'driver'),
('Dianne', 'Nunez', 28, 'female', 'married', 'vendor'),
('Reynaldo', 'Nunez', 11, 'male', 'single', 'student'),
('Ramon', 'Nofies', 52, 'male', 'married', 'electrician'),
('Lexi', 'Nofies', 42, 'female', 'married', 'engineer'),
('Karmen', 'Nofies', 19, 'female', 'single', 'student'),
('Alyssa', 'Yap', 32, 'female', 'married', 'waitress'),
('Raymond', 'Yap', 33, 'male', 'married', 'carpenter'),
('Keann', 'Yap', 12, 'male', 'single', 'student'),
('Mark', 'Razon', 50, 'male', 'married', 'welder'),
('Bianca', 'Razon', 56, 'female', 'married', 'saleslady'),
('Relz', 'Razon', 22, 'male', 'single', 'student'),
('Bernard', 'Aquino', 58, 'male', 'married', 'driver'),
('Yhan', 'Aquino', 44, 'female', 'married', 'manicurist'),
('Ramon', 'Aquino', 23, 'male', 'single', 'student'),
('Aaron', 'Abinoja', 37, 'male', 'married', 'waiter'),
('Jolyn', 'Abinoja', 34, 'female', 'married', 'nurse'),
('Sean', 'Abinoja', 16, 'male', 'single', 'student'),
('Chalie', 'Dimayuga', 32, 'female', 'married', 'bartender'),
('Paul', 'Dimayuga', 30, 'male', 'married', 'security guard'),
('Jopat', 'Dimayuga', 12, 'male', 'single', 'student'),
('Irvin', 'Chavez', 30, 'male', 'married', 'school principal'),
('Bianca', 'Chavez', 25, 'female', 'married', 'teacher'),
('Jhonathan', 'Chavez', 9, 'male', 'married', 'student'),
('Nhald', 'Cortez', 50, 'male', 'married', 'carpenter'),
('Merlie', 'Cortez', 43, 'female', 'married', 'painter'),
('Apyong', 'Cortez', 21, 'male', 'single', 'student'),
('Miguel', 'Arevalo', 64, 'male', 'married', 'waiter'),
('Roselyn', 'Arevalo', 54, 'female', 'married', 'overseas worker'),
('Andrea', 'Arevalo', 26, 'female', 'single', 'therapist'),
('Albert', 'Dela Cruz', 44, 'male', 'married', 'librarian'),
('Patricia', 'Dela Cruz', 34, 'female', 'married', 'overseas worker'),
('Jj', 'Dela Cruz', 20, 'male', 'single', 'student'),
('Briant', 'Dela Serna', 60, 'male', 'married', 'driver'),
('Aliana', 'Dela Serna', 56, 'female', 'married', 'vendor'),
('Lawrence', 'Dela Serna', 30, 'male', 'single', 'student'),
('Kiel', 'Donaire', 39, 'male', 'married', 'security guard'),
('Sam', 'Donaire', 40, 'female', 'married', 'teacher'),
('Melissa', 'Donaire', 22, 'female', 'single', 'student'),
('Martina', 'Martinez', 60, 'female', 'married', 'chef'),
('Andrew', 'Martinez', 54, 'male', 'married', 'programmer'),
('Cherry', 'Martinez', 25, 'female', 'single', 'student'),
('Paolo', 'Ong', 42, 'male', 'married', 'driver'),
('Rhenna', 'Ong', 30, 'female', 'married', 'teacher'),
('Erwin', 'Ong', 11, 'male', 'single', 'student'),
('Calvin', 'Medina', 54, 'male', 'married', 'programmer'),
('Liezel', 'Medina', 33, 'female', 'married', 'teacher'),
('Dominic', 'Medina', 54, 'male', 'single', 'student'),
('Jerom', 'Santiago', 57, 'male', 'married', 'electrician'),
('Danica', 'Santiago', 44, 'female', 'married', 'cashier'),
('Louise', 'Santiago', 18, 'female', 'single', 'student'),
('John', 'Torres', 24, 'male', 'married', 'driver'),
('Marian', 'Torres', 29, 'female', 'married', 'overseas worker'),
('Marie', 'Torres', 5, 'male', 'single', 'student'),
('Nelson', 'Bautista', 54, 'male', 'married', 'technician'),
('Anne', 'Bautista', 50, 'female', 'married', 'bartender'),
('Elaine', 'Bautista', 22, 'female', 'single', 'student'),
('Emman', 'Santelices', 48, 'male', 'married', 'security guard'),
('Noelyn', 'Santelices', 39, 'female', 'married', 'teacher'),
('Marivic', 'Santelices', 17, 'female', 'single', 'student'),
('Jaime', 'Suarez', 54, 'male', 'married', 'reporter'),
('Franchine', 'Suarez', 54, 'female', 'married', 'vendor'),
('Mae', 'Suarez', 23, 'female', 'single', 'student'),
('Nick', 'Maligaya', 43, 'male', 'married', 'welder'),
('Beyonce', 'Maligaya', 36, 'female', 'married', 'vendor'),
('Dana', 'Maligaya', 22, 'female', 'single', 'student'),
('Earl', 'Ferrer', 62, 'male', 'married', 'pilot'),
('Trixie', 'Ferrer', 54, 'female', 'married', 'manicurist'),
('Angel', 'Ferrer', 26, 'female', 'single', 'student'),
('Atkins', 'Villanueva', 38, 'male', 'married', 'teacher'),
('Princess', 'Villanueva', 35, 'female', 'married', 'nurse'),
('Joyce', 'Villanueva', 19, 'female', 'single', 'student'),
('Joseph', 'Vergara', 43, 'male', 'married', 'carpenter'),
('Joy', 'Vergara', 40, 'female', 'married', 'architect'),
('Yasmine', 'Vergara', 26, 'female', 'single', 'student'),
('Gabriel', 'Dasig', 44, 'male', 'married', 'reporter'),
('Jasmine', 'Dasig', 44, 'female', 'married', 'musician'),
('Catherine', 'Dasig', 23, 'female', 'single', 'student')


('Willie', 'Serna', 61, 'male', 'married', 'senior_citizen'),
('Luloy', 'Serna', 63, 'male', 'married', 'senior_citizen'),
('Arnie', 'Serna', 33, 'female', 'single', 'sales_lady'),
('Dodong', 'Serna', 30, 'male', 'single', 'safety_coordinator'),
('Leslie', 'Pelaez', 34, 'female', 'married', 'area_manager'),
('Christopher', 'Pelaez', 36, 'male', 'married', 'security_guard'),
('Isabela', 'Pelaez', 10, 'female', 'single', 'student'),
('Shirland', 'Habon', 25, 'male', 'single', 'janitor'),
('Shalee', 'Caranto', 30, 'female', 'married', 'marketing_manager'),
('Jeremy', 'Caranto', 31, 'male', 'married', 'civil_engineer'),
('Anabelle', 'Medina', 24, 'female', 'single', 'service_crew'),
('Eduard', 'Monguez', 25, 'male', 'single', 'collector'),
('Ronnie', 'Campos', 45, 'male', 'married', 'jeepney_driver'),
('Aurora', 'Campos', 43, 'female', 'married', 'admin_officer'),
('Kyle', 'Campos', 19, 'male', 'single', 'college_student'),
('Josh', 'Campos', 15, 'male', 'single', 'student'),
('Esther', 'Maranan', 25, 'female', 'single', 'secretary'),
('Rachelle', 'Abrenica', 28, 'female', 'married', 'editor_in_chief'),
('Shane', 'Abrenica', 30, 'male', 'married', 'chef'),
('Jovelyn', 'Mejia', 27, 'female', 'married', 'casino_dealer'),
('Nicole', 'Mejia', 7, 'female', 'single', 'student'),
('Evo', 'Mejia', 6, 'male', 'single', 'student'),
('Rhea', 'Paz', 38, 'female', 'married', 'housewife'),
('Jonathan', 'Paz', 42, 'male', 'married', 'construction_worker'),
('Chloe', 'Paz', 8, 'female', 'single', 'student'),
('Kate', 'Paz', 12, 'female', 'single', 'student'),
('Ken', 'Smith', 34, 'male', 'married', 'doctor'),
('Zoey', 'Smith', 34, 'female', 'married', 'artist'),
('Rufo', 'Abenales', 26, 'male', 'single', 'assistant_engineer'),
('Mark', 'Abenales', 67, 'male', 'widow', 'senior_citizen'),
('Jasmine', 'Cello', 22, 'female', 'single', 'cashier'),
('Melody', 'Sanchez', 21, 'female', 'single', 'cashier'),
('Kimberly', 'Monzon', 29, 'female', 'married', 'waitress'),
('Gerald', 'Monzon', 32, 'male', 'married', 'cook'),
('Shiela', 'Monzon', 5, 'female', 'single', 'not_yet_student'),
('Rowena', 'Alota', 32, 'feamle', 'married', 'online_seller'),
('Mjeck', 'Alota', 35, 'male', 'married', 'policeman'),
('Jeron', 'Alota', 6, 'male', 'single', 'student'),
('Jeck', 'Dayu', 27, 'male', 'single', 'call_center_agent'),
('Juvilyn', 'Yalong', 25, 'female', 'single', 'biologist'),
('Antonette', 'Villarin', 25, 'female', 'single', 'sales_coordinator'),
('Fatima', 'Velasco', 47, 'female', 'married', 'online_teacher'),
('Jerric', 'Velasco', 50, 'male', 'married', 'camera_man'),
('Joseph', 'Velasco', 15, 'male', 'single', 'student'),
('Felissa', 'Velasco', 17, 'male', 'single', 'student'),
('Jema', 'Velasco', 24, 'female', 'single', 'architect'),
('Jamaica', 'Sagun', 23, 'female', 'single', 'hr_admin'),
('Agatha', 'Sagun', 20, 'female', 'single', 'college_student'),
('Joanne', 'Sagun', 43, 'female', 'widow', 'call_center_agent'),
('Ligaya', 'Perez', 61, 'female', 'married', 'senior_citizen'),
('Ben', 'Perez', 65, 'male', 'married', 'senior_citizen'),
('Abigail', 'Perez', 44, 'female', 'single', 'teacher'),
('Eunice', 'Villanueva', 21, 'female', 'single', 'vocalist'),
('Adonis', 'Bautista', 22, 'male', 'single', 'waiter'),
('Mikaela', 'Alimento', 34, 'female', 'married', 'fish_vendor'),
('Michael', 'Alimento', 37, 'male', 'married', 'messenger'),
('Cassandra', 'Cruz', 23, 'female', 'single', 'receptionist'),
('Carla', 'Urtula', 27, 'female', 'single', 'receptionist'),
('Felix', 'Dantes', 35, 'male', 'married', 'manager'),
('Marie', 'Dantes', 31, 'female', 'married', 'writer'),
('Malia', 'Dantes', 16, 'female', 'single', 'student'),
('Jack', 'Garcia', 41, 'male', 'widow', 'assistant_manager'),
('Kath', 'Garcia', 23, 'female', 'single', 'college_student'),
('Daniel', 'Garcia', 18, 'female', 'single', 'college_student')
;
    
#PERSON_________________________________________________________________________________________________________________________________________________________________    
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
CREATE PROCEDURE UpdatePerson(in fname varchar(255), in surname varchar(255), in age int, in gender varchar(255),in m_status varchar(255), in occupation varchar(255), in person_id int)
	BEGIN
    UPDATE register_person
	SET 
		person_fname = fname,
        person_sname = surname,
        person_age = age,
        person_gender = gender,
        marital_status = m_status,
        person_occupation = occupation
	WHERE id = person_id;
    END &&
DELIMITER ;
CALL UpdatePerson('Catherine', 'Dasig', 24, 'female', 'single', 'student', 205);

DELIMITER &&
CREATE PROCEDURE DeletePersonById(in person_id int)
	BEGIN
    DELETE FROM register_person
	WHERE id = person_id;
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
CREATE PROCEDURE UpdateCityById(in city_name varchar(255), in city_population int, in num_of_family int, in city_id int)
	BEGIN
    UPDATE register_city_name
    SET
		city_name = city_name, 
        city_population = city_population, 
        num_family_c = num_of_family
	WHERE
		id = city_id;
    END &&
DELIMITER ;
CALL UpdateCityById('Caloocan',54,8,1);    

drop procedure DeleteCityById;
DELIMITER &&
CREATE PROCEDURE DeleteCityById(in city_id int)
	BEGIN
    DELETE FROM register_city_name
	WHERE id = city_id;
    END &&
DELIMITER ;
CALL DeleteCityById();

#Barangay______________________________________________________________________________________________________________________
drop procedure RegisterBrgy;     
DELIMITER &&
CREATE PROCEDURE RegisterBrgy(in brgy_name varchar(255), in brgy_population int, in num_of_family int)
	BEGIN
    INSERT INTO register_barangay(barangay_name, barangay_population, num_family_b)
	VALUES
		(brgy_name, brgy_population, num_of_family);
    END &&
DELIMITER ;
CALL RegisterBrgy('Poblacion',4,2);

drop procedure ViewBrgy;
DELIMITER &&
CREATE PROCEDURE ViewBrgy()
	BEGIN
    SELECT barangay_name, barangay_population, num_family_b
    FROM register_barangay;
    END &&
DELIMITER ;
CALL ViewBrgy(); 

drop procedure UpdateBrgyById;
DELIMITER &&
CREATE PROCEDURE UpdateBrgyById(in brgy_name varchar(255), in brgy_population int, in num_of_family int, in brgy_id int)
	BEGIN
    UPDATE register_barangay
    SET
		barangay_name = brgy_name, 
        barangay_population = brgy_population, 
        num_family_b = num_of_family
	WHERE
		id = brgy_id;
    END &&
DELIMITER ;
CALL UpdateBrgyById('',1,1,1);    

drop procedure DeleteBrgyById;
DELIMITER &&
CREATE PROCEDURE DeleteBrgyById(in brgy_id int)
	BEGIN
    DELETE FROM register_barangay
	WHERE id = brgy_id;
    END &&
DELIMITER ;
CALL DeleteBrgyById();

#family__________________________________________________________________________________________________________________________
drop procedure RegisterFamily;     
DELIMITER &&
CREATE PROCEDURE RegisterFamily(in fam_name varchar(255), in fam_size int, in num_of_children int)
	BEGIN
    INSERT INTO register_family_name(family_name, family_size, num_children)
	VALUES
		(fam_name, fam_size, num_of_children);
    END &&
DELIMITER ;
CALL RegisterFamily('Rasay',4,2);

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
CREATE PROCEDURE UpdateFamilyById(in fam_name varchar(255), in fam_size int, in num_of_children int, in family_id int)
	BEGIN
    UPDATE register_family_name
    SET
		family_name = fam_name, 
        family_size = fam_size, 
        num_children = num_of_children
	WHERE
		id = family_id;
    END &&
DELIMITER ;
CALL UpdateFamilyById('',1,1,1);    

drop procedure DeleteFamilyById;
DELIMITER &&
CREATE PROCEDURE DeleteFamilyById(in family_id int)
	BEGIN
    DELETE FROM register_family_name
	WHERE id = family_id;
    END &&
DELIMITER ;
CALL DeleteFamilyById();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
