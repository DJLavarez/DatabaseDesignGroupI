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
 
INSERT INTO register_person(person_name, person_age, person_gender, marital_status, person_occupation)
VALUES
	('Maria', '', ''),
    ('Patricia', '', ''),
    ('Nichole', '', ''),
    ('Bianca', '', ''),
    ('Ian', '', ''),
    ('Joseph', '', ''),
    ('Jack', '', ''),
    ('Carlo', '', ''),
    ('Peter June', '', ''),
    ('Joey', '', ''),
    ('Kristine', '', ''),
    ('Michael', '', ''),
    ('Kobe', '', ''),
    ('Gina', '', ''),
    ('Jake', '', ''),
    ('Amy', '', ''),
    ('Raymond', '', ''),
    ('Scully', '', ''),
    ('Hitchcock', '', ''),
    ('Rosa', '', '')
;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    