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
	('Santos', '', ''),
    ('Mondala', '', ''),
    ('Manlangit', '', ''),
    ('Diaz', '', ''),
    ('Aranete', '', ''),
    ('Lara', '', ''),
    ('Mendoza', '', ''),
    ('Faragones', '', ''),
    ('David', '', ''),
    ('Molina', '', ''),
    ('Borja', '', ''),
    ('Reyes', '', ''),
    ('Balmes', '', ''),
    ('Corpuz', '', ''),
    ('Galvez', '', ''),
    ('Dimajutoc', '', ''),
    ('Fajardo', '', ''),
    ('', '', ''),
    ('', '', ''),
    ('', '', '')
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
('Eusebio', 'Molina', 33, 'male', 'married', 'digital_artist' ),
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
