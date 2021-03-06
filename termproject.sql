--CS1555 Term Project
-- ### 1. Create the tables and insert necessary data

drop table Flight cascade constraints ;
drop table Plane cascade constraints ;
drop table Price cascade constraints ;
drop table Customer cascade constraints ;
drop table Reservation cascade constraints ;
drop table Reservation_detail cascade constraints ;
drop table Date cascade constraints ;


create table Flight(
flight_number varchar(3), 	
plane_type char(4),
departure_city varchar(3),
arrival_city varchar(4),
departure_time varchar(4),
arrival_time varchar(4),
weekly_schedule varchar(7)
);

create table Plane(
plane_type char(4),
manufacture varchar(10),
plane_capacity int,
last_service date,
year int
);

create table Price(
departure_city varchar(3),
arrival_city varchar(3),
high_Price int,
low_Price int
);

create table Customer(
cid varchar(9),
salutation varchar(3),
first_name varchar(30),
last_name varchar(30),
credit_card num varchar(16),
credit_card expire date,
street varchar(30),
city varchar(30),
state varchar(2),
phone varchar(10),
email varchar(30)
);

create table Reservation(
reservation_number varchar(5),
cid varchar(9),
cost int,
reservation_date date,
ticketed varchar(1)
);

create table Reservation_detail(
reservation_number varchar(5),
flight_number varchar(3),
flight_date date,
leg int
);

create table Date(
c_date date
);


alter table Flight add constraint pk_Flight primary key(Flight_number) ;
alter table Plane add constraint pk_Plane primary key(Plane_type) ;
alter table Price add constraint pk_Price primary key(departure city, arrival city) ;
alter table Customer add constraint pk_Customer primary key(cid) ;
alter table Reservation add constraint pk_Reservation primary key(Reservation_number) ;
alter table Date add constraint pk_date primary key(auction_id, category) ;

alter table Flight add constraint fk_Flight foreign key(Plane_type) references Plane(Plane_type) ;
alter table Reservation add constraint fk_Reservation foreign key(cid) references Customer(cid) ;
alter table Reservation add constraint fk_Reservation_detail1 foreign key(Reservation_number) references Reservation(Reservation_number) ;
alter table Reservation add constraint fk_Reservation_detail2 foreign key(Flight_number) references Flight(Flight_number) ;

CREATE OR REPLACE TRIGGER adjustTicket


END;
/

CREATE OR REPLACE TRIGGER PlaneUpgrade
AFTER INSERT ON Reservation

END;
/

CREATE OR REPLACE TRIGGER cancelReservation
AFTER UPDATE ON Date

END;
/
