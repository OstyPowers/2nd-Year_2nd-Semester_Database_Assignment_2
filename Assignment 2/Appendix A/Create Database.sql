create database GuestHousesMao0417;
use GuestHousesMao0417;

create table calendar (
i date primary key
)

create table room_type (
id varchar(6) primary key,
description varchar(100)
)

create table rate (
room_type varchar(6) foreign key references room_type(id),
occupancy int not null check (occupancy between 0 and 99999999999),
amount decimal(10,2),
primary key (room_type, occupancy)
)

create table room (
id int not null check (id between 0 and 99999999999) primary key,
room_type varchar(6) foreign key references room_type(id),
max_occupancy int not null check (max_occupancy between 0 and 99999999999)
)

create table guest (
id int not null check (id between 0 and 99999999999) primary key,
first_name varchar(50),
last_name varchar(50),
address varchar(50)
)

create table booking (
booking_id int not null check (booking_id between 0 and 99999999999) primary key,
booking_date date,
room_no int not null check (room_no between 0 and 99999999999) foreign key references room(id),
guest_id int not null check (guest_id between 0 and 99999999999) foreign key references guest(id),
occupants int not null check(occupants between 0 and 99999999999),
room_type_requested varchar(6),
nights int not null check (nights between 0 and 99999999999),
arrival_time varchar(5),
constraint occupants foreign key (room_type_requested,occupants)references rate(room_type,occupancy)
)

create table extra (
extra_id int not null check (extra_id between 0 and 99999999999) primary key,
booking_id int not null check (booking_id between 0 and 99999999999) foreign key references booking(booking_id),
description varchar(50),
amount decimal(10,2)
)
