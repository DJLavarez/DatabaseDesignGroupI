create database DatabaseGroupD;
use DatabaseGroupD;

create table register_city_name(
	id int auto_increment primary key,
    city_name varchar(255)
;

create table register_town_name(
	id int auto_increment primary key,
    town_name varchar(255)
;

create table register_barangay(
	id int auto_increment primary key,
    barangay_name varchar(255)
;

create table register_district_zone(
	id int auto_increment primary key,
    district_name varchar(255),
    zone_num int
;

create table register_population(
	id int auto_increment primary key,
    population_num int,
    population_children int,
    population_pwd int,
    population_seniorctzn int
;

create table register_vehicle_population(
	id int auto_increment primary key,
    vehicle_population int
;

create table register_family_name(
	id int auto_increment primary key,
    family_name varchar(255),
    person_info varchar(255),
    average_age int,
    sex_gender bool,
    edu_lvl varchar(255),
    marital_status varchar(255),
    person_occupation varchar(255),
    person_religion varchar(255),
	family_size int,
    num_children int,
;

create table register_average_incomes(
	id int auto_increment primary key,
    average_income int
;

create table register_house_address(
	id int auto_increment primary key,
    house_address varchar(255)
;

