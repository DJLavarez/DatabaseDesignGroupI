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
    person_name varchar(255),
    person_age int,
    person_gender bool,
    marital_status varchar(255),
    person_occupation varchar(255)
);

INSERT INTO register_city_name(city_name, city_population, num_family_c)
VALUES
    ('Caloocan', '1583978', ''),
    ('Pasay', '416522', ''),
    ('Quezon', '2936116', ''),
    ('Batangas', '237370', ''),
    ('Cotabato', '179433', ''),
    ('Mandaluyong', '305576', ''),
    ('Pasig', '755300', ''),
    ('Iloilo', '387681', ''),
    ('Taguig', '644473', ''),
    ('Manila', '1780148', ''),
    ('Makati', '510383', ''),
    ('Tagaytay', '71181', ''),
    ('Parañaque', '665822', ''),
    ('Cavite City', '115932', ''),
    ('Cebu', '922611', ''),
    ('Zamboanga', '861799', ''),
    ('Cabanatuan', '220250', ''),
    ('cagayan De Oro', '675950', ''),
    ('Davao', '1632991', ''),
    ('Dagupan', '171271', '')
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
	('Dela Cruz', '', ''),
    ('Chavez', '', ''),
    ('Yap', '', ''),
    ('Cruz', '', ''),
    ('Dimaguiba', '', ''),
    ('Flores', '', ''),
    ('Castillo', '', ''),
    ('Villanueva', '', ''),
    ('Garcia', '', ''),
    ('Mendoza', '', ''),
    ('Baustista', '', ''),
    ('Ocampo', '', ''),
    ('Santos', '', ''),
    ('Reyes', '', ''),
    ('Sulit', '', ''),
    ('Mercado', '', ''),
    ('Simon', '', ''),
    ('De Guzman', '', ''),
    ('Tomas', '', ''),
    ('Castro', '', '')
;
 
INSERT INTO register_person(person_fname, person_sname, person_age, person_gender, marital_status,
person_occupation)
VALUES
('Steven', 'Santos', 23, 'male', 'single', 'payment_specialist' ),
('Belle', 'Cristobal', 26, 'female', 'married', 'service_coordinator' ),
('Jodalyn', 'Alota' 22, 'female', 'single', 'structural_engineer' ),
('Angel', 'Mondala' 22, 'female', 'single', 'chemical_engineer' ),
('Shalee', 'Caranto' 30, 'female', 'married', 'marketing_manager' ),
('Jefferson', 'Manlangit' 35, 'male', 'married', 'restaurant_manager' ),
('Aubrey', 'Diaz', 20, 'female', 'single', 'accountant' ),
('Michelle', 'Aranete', 25, 'female', 'married', 'call_center' ),
('Marthy', 'Abecia', 25, 'male', 'single', 'pharmacist' ),
('Jaycee', 'Lara', 26, 'male', 'single', 'professor' ),
('Sharie', 'Mendoza', 28, 'female', 'single', 'teacher' ),
('Rhobin', 'Faragones', 25, 'male', 'single', 'it_personnel' ),
('Jose', 'David', 35, 'male', 'married', 'barbeque_vendor' ),
('Ailyn', 'Andrade', 29, 'female', 'single', 'training_manager' ),
('Arzel', 'Castro', 18, 'female', 'single', 'service_crew' ),
('Jean', 'Garcia', 25, 'female', 'married', 'sales_clerk' ),
('Eusebio', 'Molina', 53, 'male', 'married', 'digital_artist' ),
('Yolanda', 'Borja', 44, 'female', 'married', 'vendor' ),
('Arvie', 'Dimaculangan', 26, 'male', 'single', 'driver' ),
('Jordan', 'Rapada', 25, 'male', 'single', 'it_specialist' ),
('Lance', 'Agana', 31, 'male', 'single', 'lawyer' ),
('Ezekiel', 'Villanueva', 34, 'male', 'married', 'instructor' ),
('Christyll', 'Reyes', 29, 'female', 'single', 'principal' ),
('Morris', 'Balmes', 35, 'male', 'married', 'bartender' ),
('Deheartty', 'Cabrero' ,27, 'female', 'single', 'promodizer' ),
('Viel', 'Alvarez', 9, 'male', 'single', 'student' ),
('Yanah', 'Pelaez', 14, 'female', 'single', 'student' ),
('Simon', 'Santiago', 17, 'male', 'single', 'student' ),
('Royette', 'Corpuz', 34, 'male', 'married', 'technician' ),
('Lovely', 'Alonzo', 21, 'female', 'single', 'tourist_guide' ),
('Ian', 'Serna', 41, 'male', 'married', 'janitor' ),
('Iya', 'Sanchez', 17, 'female', 'single', 'student' ),
('Patrick', 'Galvez', 39, 'male', 'single', 'blogger' ),
('Dianne', 'Dimajutoc', 32, 'female', 'single', 'principal' ),
('Alvin', 'Fajardo', 39, 'male', 'single', 'captain' ),
('Jonna', 'Paz', 49, 'female', 'married', 'manager' ),
('Joseph', 'Ceneta', 39, 'male', 'single', 'writter' ),
('Ara', 'Valdez', 23, 'female', 'single', 'flight_attendant' ),
('Mae', 'Cello', 28, 'female', 'single', 'waitress' )
;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
