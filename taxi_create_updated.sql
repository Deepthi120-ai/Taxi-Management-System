create database Taxi_Management_System;
use Taxi_Management_System;
create table Driver( Driver_Id char(10) primary key,Fname varchar(20) ,
Minit char(1) ,  Lname varchar(20), DOB  date, stime time , etime time,
Experience_yrs int ,  Gender char(1),  Spoken_Lang varchar(30),Contact char(10)
);

create table Taxi(Taxi_Id char(10) primary key ,VStatus varchar(20),
Taxi_Type varchar(30) , Regis_no varchar(9));


create table Passenger(Pssgr_Id char(10) primary key,Fname varchar(20) ,
 Minit char(1), Lname varchar(20) , PStatus varchar(50),
 DOB date ,Gender char(1) ,  Spoken_Lang varchar(30), Contact_No  char(10), 
 Address varchar(200),taxi_id char(10),
 Foreign key(taxi_id) references Taxi(Taxi_Id));
 
create table Drive_Taxi(dt_no char(10),Driver_Id char(10),Taxi_Id char(10),Pssn_Id char(10),primary key(dt_no),
Foreign key(Driver_Id) references Driver(Driver_Id),
Foreign key(Taxi_Id) references Taxi(Taxi_Id),
Foreign key(Pssn_Id) references Passenger(Pssgr_Id));

create table Taxi_Available(select_Id char(10) primary key, Taxi_Id char(10) ,current_pt varchar(40),dt_no char(10),
Foreign key(Taxi_Id) references Taxi(Taxi_Id),
Foreign key(dt_no) references Drive_Taxi(dt_no));

create table Booking_Options(book_id char(10) primary key,Pssgr_Id char(10)  ,
estimated_cost int ,  destination varchar(40),  pick_up_point varchar(40), Type_of_Booking varchar(20),
 Foreign key(Pssgr_Id) references Passenger(Pssgr_Id));
 
create table Routes( Route_Id char(10),  dest varchar(40), 
  nextpoint varchar(40), distance_km int ,
 currpoint  varchar(40),  delay_min int,  s_time time,  e_time time, D_id char(10),
 primary key(Route_Id,currpoint),
 Foreign key(D_id) references Driver(Driver_Id));
 

 
create table Areas( area_name varchar(40) primary key, 
N_area varchar(40) ,  N_dist int,  S_area varchar(40),  S_dist int,
W_area  varchar(40),  W_dist int,  E_area varchar(40),  E_dist int);

create table Feedback( Fbk_Id char(10) primary key, comfort int , cost  int,
  punctuality int,  Email varchar(20), ratings int,pssgr_id char(10),D_id char(10),
  Foreign key(pssgr_id) references Passenger(Pssgr_Id),
  Foreign key(D_id) references Driver(Driver_Id));
 

create table Bill_Details( Bill_no char(10) primary key, Total_amt int,  Discount int, 
 Bill_date date,  Mode_Of_Payment varchar(20), Advance int, dt_no char(10),
Foreign key(dt_no) references Drive_Taxi(dt_no)
 );
 
create table Trip_Details(Trip_Id char(10) primary key ,dt_no char(10), s_time time, e_time time,Bill_no char(10),
Foreign key(Bill_no) references Bill_Details(Bill_no),
Foreign key(dt_no) references Drive_Taxi(dt_no));

create table Booking_Details(Booking_Id char(10) primary key , OTP char(4),  time_to_reach_pickup int,
dt_no char(10),
Foreign key(dt_no) references Drive_Taxi(dt_no));
  
create table Violation_Records( violation_record_no char(10) primary key,  driver_id char(10),
reasons varchar(50) ,  fine int,
Foreign key(driver_id) references Driver(Driver_Id));

create table Accident_Records( accident_no char(10) primary key,  Vehicle_Id char(10), 
 accident_date date,  accident_location varchar(20), Inssurance_Claim varchar(20),
 Foreign key(Vehicle_Id) references Taxi(Taxi_Id));
 
create table Maintanance_Records( maintanance_record_no char(10) primary key, 
 maintanance_station varchar(20), cost int , maintanance_date  date, notes varchar(30), vehicle_id char(10),
 Foreign key(vehicle_id) references Taxi(Taxi_Id));
 
create table Accident_Driver(accident_no char(10), Driver_Id char(10),primary key(accident_no,Driver_Id),
Foreign key(accident_no) references Accident_Records(accident_no),
Foreign key(Driver_Id) references Driver(Driver_Id));
