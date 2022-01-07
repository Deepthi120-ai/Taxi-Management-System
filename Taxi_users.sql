use Taxi_Management_System;
CREATE USER 'Employee1'@'localhost' IDENTIFIED BY 'UE19EMP000';
CREATE USER 'Employee2'@'localhost' IDENTIFIED BY 'UE19EMP001';
CREATE USER 'Employee3'@'localhost' IDENTIFIED BY 'UE19EMP002';
CREATE USER 'Employee4'@'localhost' IDENTIFIED BY 'UE19EMP003';
CREATE USER 'Employee5'@'localhost' IDENTIFIED BY 'UE19EMP004';
CREATE USER 'Employee6'@'localhost' IDENTIFIED BY 'UE19EMP005';
CREATE USER 'Employee7'@'localhost' IDENTIFIED BY 'UE19EMP006';
CREATE USER 'Employee8'@'localhost' IDENTIFIED BY 'UE19EMP007';
CREATE USER 'Employee9'@'localhost' IDENTIFIED BY 'UE19EMP008';
CREATE USER 'Employee10'@'localhost' IDENTIFIED BY 'UE19EMP009';
CREATE USER 'Employee11'@'localhost' IDENTIFIED BY 'UE19EMP010';
CREATE USER 'Employee12'@'localhost' IDENTIFIED BY 'UE19EMP011';
CREATE USER 'Employee13'@'localhost' IDENTIFIED BY 'UE19EMP012';
CREATE USER 'Employee14'@'localhost' IDENTIFIED BY 'UE19EMP013';
CREATE USER 'Employee15'@'localhost' IDENTIFIED BY 'UE19EMP014';

CREATE USER 'Employee16'@'localhost' IDENTIFIED BY 'UE19EMP015';
CREATE USER 'Employee17'@'localhost' IDENTIFIED BY 'UE19EMP014';

CREATE USER 'Manager1'@'localhost' IDENTIFIED BY 'UE19MGR001';
CREATE USER 'Manager2'@'localhost' IDENTIFIED BY 'UE19MGR002';
CREATE USER 'Manager3'@'localhost' IDENTIFIED BY 'UE19MGR003';

CREATE USER 'Passenger1'@'localhost' IDENTIFIED BY 'UE19PSN001';
CREATE USER 'Passenger2'@'localhost' IDENTIFIED BY 'UE19PSN002';
CREATE USER 'Passenger3'@'localhost' IDENTIFIED BY 'UE19PSN003';

CREATE USER 'Driver1'@'localhost' IDENTIFIED BY 'UE19DRV001';
CREATE USER 'Driver2'@'localhost' IDENTIFIED BY 'UE19DRV002';
CREATE USER 'Driver3'@'localhost' IDENTIFIED BY 'UE19DRV003';

select user,host from mysql.user;
show grants for Employee1@localhost;


grant select on taxi_management_system.Driver to ''@localhost;
grant insert,update,delete on taxi_management_system.Taxi to Employee1@localhost;
grant insert,update,delete on taxi_management_system.Passenger to Employee2@localhost;
grant insert,update,delete on taxi_management_system.Drive_taxi to Employee3@localhost;
grant insert,update,delete on taxi_management_system.Routes to Employee4@localhost;
grant insert,update,delete on taxi_management_system.Booking_Options to Employee5@localhost;
grant insert,update,delete on taxi_management_system.Areas to Employee6@localhost;
grant insert,update,delete on taxi_management_system.Feedback to Employee7@localhost;
grant insert,update,delete on taxi_management_system.Bill_Details to Employee8@localhost;
grant insert,update,delete on taxi_management_system.Trip_Details to Employee9@localhost;
grant insert,update,delete on taxi_management_system.Booking_Details to Employee10@localhost;
grant insert,update,delete on taxi_management_system.Booking_Details to Employee11@localhost;
grant insert,update,delete on taxi_management_system.Violation_Records to Employee12@localhost;
grant insert,update,delete on taxi_management_system.Accident_Records to Employee13@localhost;
grant insert,update,delete on taxi_management_system.Maintanance_Records to Employee14@localhost;
grant insert,update,delete on taxi_management_system.Accident_Driver to Employee15@localhost;

grant insert,update,delete,remove,drop on taxi_management_system.* to Manager1@localhost;
grant insert,update,delete,remove,drop on taxi_management_system.* to Manager2@localhost;
grant insert,update,delete,remove,drop on taxi_management_system.* to Manager3@localhost;

grant insert,update on taxi_management_system.passenger to Passenger1@localhost;
grant insert,update on taxi_management_system.passenger to Passenger2@localhost;
grant insert,update on taxi_management_system.passenger to Passenger3@localhost;

grant insert,update on taxi_management_system.Driver to Driver1@localhost;
grant insert,update on taxi_management_system.Driver to Driver2@localhost;
grant insert,update on taxi_management_system.Driver to Driver3@localhost;

grant insert,update on taxi_management_system.Feedback to Passenger1@localhost;
grant insert,update on taxi_management_system.Feedback to Passenger2@localhost;
grant insert,update on taxi_management_system.Feedback to Passenger3@localhost;

