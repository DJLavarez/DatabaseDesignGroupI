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
    num_family_b int,
    city_id INT, 
    FOREIGN KEY (city_id),
    	REFERENCES register_barangay(id)
);

create table register_family_name(
	id int auto_increment primary key,
    family_name varchar(255),
    family_size int,
    num_children int,
    barangay_id INT,
    FOREIGN KEY (barangay_id)
	REFERENCES register_family_name(id)
);

create table register_person(
	id int auto_increment primary key,
    person_name varchar(255),
    person_age int,
    person_gender bool,
    marital_status varchar(255),
    person_occupation varchar(255),
    family_id INT,
    FOREIGN KEY (family_id)
	REFERENCES register_person(id)
);

INSERT INTO register_city_name(city_name, city_population, num_family_c)
VALUES
    ('Caloocan', '', ''),
    ('Pasay', '', ''),
    ('Quezon', '', ''),
    ('Malabon', '', ''),
    ('Valenzuela', '', ''),
    ('Las Piñas', '', ''),
    ('Pasig', '', ''),
    ('Navotas', '', ''),
    ('Taguig', '', ''),
    ('Manila', '', ''),
    ('Makati', '', ''),
    ('Marikina', '', ''),
    ('Parañaque', '', ''),
    ('Mandaluyong', '', ''),
    ('Cebu', '', ''),
    ('Zamboanga', '', ''),
    ('Baguio', '', ''),
    ('Iloilo', '', ''),
    ('Davao', '', ''),
    ('Dagupan', '', '')
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
 
INSERT INTO register_person(person_name, person_age, person_gender, marital_status, person_occupation)
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
