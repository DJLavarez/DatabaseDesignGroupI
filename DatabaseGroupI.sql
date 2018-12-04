create database DatabaseGroupI;
use DatabaseGroupI;

create table register_city_name(
	id int auto_increment primary key,
    city_name varchar(255),
    city_population int,
    num_family_c int
);

create table register_barangay(
	id int auto_increment primary key,
    barangay_name varchar(255),
    barangay_population int,
    num_family_b int
);

create table register_family_name(
	id int auto_increment primary key,
    family_name varchar(255),
    family_size int,
    num_children int
);

create table register_person(
	id int auto_increment primary key,
    person_fname varchar(255),
    person_sname varchar(255),
    person_age int,
    person_gender bool,
    marital_status varchar(255),
    person_occupation varchar(255)
);

INSERT INTO register_city_name(city_name, city_population, num_family_c)
VALUES
    ('Caloocan', 15, 5),
    ('Pasay', 41, 3),
    ('Quezon', 29, 7),
    ('Batangas', 23, 4),
    ('Cotabato', 17, ),
    ('Mandaluyong', 30, 3),
    ('Pasig', 75, 4),
    ('Iloilo', 38, 5),
    ('Taguig', 64, 6),
    ('Manila', 17, 9),
    ('Makati', 51, 7),
    ('Tagaytay', 71, 8),
    ('Parañaque', 66, 3),
    ('Cavite', 11, 5),
    ('Cebu', 92, 5),
    ('Zamboanga', 86, 3),
    ('Cabanatuan', 22, 7),
    ('Cagayan De Oro', 67, 8),
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
    ('Gapan', 34, 6),
    ('General Santos', 54, 8),
    ('Gingoog', 78, 5),
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
    ('Maasin', 51, 7),
    ('Mabalacat', 78, 7),
    ('Malabon', 54, 9),
    ('Malaybalay', 63, 8),
    ('Malolos', 26, 4),
    ('Mandaue', 21, 7),
    ('Marawi', 45, 5),
    ('Marikina', 79, 7),
	('Masbate', 26, 6),
	('Mati', 46, 8),
	('Meycauayan', 64, 8),
	('Muñoz', 16, 4),
	('Muntinlupa', 13, 3),
	('Naga', 65, 8),
	('Naga', 63, 8),
	('Navotas', 46, 7),
	('Olongapo', 32, 8),
	('Ormoc', 43, 6),
	('Oroquieta', 13, 4),
	('Ozamiz', 32, 6),
	('Palayan', 56, 8),
	('Panabo', 46, 6),
	('Passi', 12, 3),
	('Puerto Princesa', 98, 9),
	('Roxas', 45, 5),
	('Sagay', 14, 7),
	('Samal', 65, 5),
	('San Fernando', 64, 8),
	('San Juan', 45, 5),
	('Santa Rosa', 23, 3),
	('Sorsogon', 45, 5),
	('Surigao', 56, 8),
	('Tacloban', 34, 3),
	('Tagbilaran', 48, 6),
	('Tanauan', 32, 8),
	('Tarlac', 44, 6),
	('Tuguegarao', 23, 7),
	('Valenzuela', 69, 9),
	('Vigan', 14, 3),
	('Valencia', 65, 6)
;

INSERT INTO register_barangay(barangay_name, barangay_population, num_family_b)
VALUES
	('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', '')
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
    ('Borja', 3, 1,),
    ('Borja', 3, 1),
    ('Reyes', 1, 0),
    ('Balmes', 5, 3),
    ('Corpuz', 4, 2),
    ('Galvez', 1, 0),
    ('Dimajutoc', 1, 0),
    ('Fajardo', 5, 3),
    ('', , ),
    ('', , ),
    ('', , )
;
 
INSERT INTO register_person(person_fname, person_sname, person_age, person_gender, marital_status,
person_occupation)
VALUES
('Steven', 'Santos', 46, 'male', 'married', 'payment_specialist' ),
('Belle', 'Santos', 44, 'female', 'married', 'service_coordinator' ),
('Jodalyn', 'Santos' 22, 'female', 'single', 'college_student' ),
('Angel', 'Mondala' 26, 'female', 'married', 'chemical_engineer' ),
('Charles', 'Mondala' 29, 'male', 'married', 'chemical_engineer' ),
('Jefferson', 'Manlangit' 35, 'male', 'single', 'restaurant_manager' ),
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
('Mae', 'Fajardo', 10, 'female', 'single', 'student' )
;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
