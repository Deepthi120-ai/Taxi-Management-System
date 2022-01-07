use Taxi_Management_System;
insert into Driver values('tms01aa001','ravi',null,'chandran','1965-02-19','09:30:00','22:30:00',5,'M','Hindi','8876761205');
insert into Driver values('tms01ab002','Hari',null,'rajesh','1971-03-20','08:30:00','22:30:00',7,'M','Kannada','8976761205');
insert into Driver values('tms23aa021','Faisal',null,'Momin','1979-05-12','08:30:00','22:30:00',5,'M','Hindi','9876761297');
insert into Driver values('tms31aa201','Benny','H','David','1983-02-01','09:30:00','22:30:00',3,'M','Kannada','8676723436');
insert into Driver values('tms21ab061','Swaram','R','Munni','1967-11-19','08:30:00','22:30:00',13,'M','Kannada','9776761225');
insert into Driver values('tms51aa007','Raju',null,'Pillai','1981-03-25','07:30:00','22:30:00',7,'M','Kannada','8576761267');
insert into Driver values('tms34ab079','Sonnu',null,'Maran','1975-04-01','09:30:00','22:30:00',10,'M','Hindi','8455181287');
insert into Driver values('tms91ab232','Parim',null,'karim','1965-03-17','07:30:00','22:30:00',20,'M','Hindi','8906561244');
insert into Driver values('tms11ab290','Thalak',null,'Vignesh','1967-07-10','09:30:00','22:30:00',10,'M','Kannada','8706561906');
insert into Driver values('tms11ab291','Meena',null,'Iyer','1980-03-27','09:30:00','22:30:00',1,'F','Tamil','8706561106');

insert into Taxi values('txn01aa001','Driving','Sedan','KA1YE3561');
insert into Taxi values('txn01ab002','Driving','Prime Sedan','KA1AB3572');
insert into Taxi values('txn23aa021','Offline','SUV','KA7LE3581');
insert into Taxi values('txn41aa201','Driving','Sedan','KL1YE3576');
insert into Taxi values('txn53ab061','Driving','Hatchback','TN1RT5969');
insert into Taxi values('txn91ab068','Driving','Prime Sedan','KA7UY3983');
insert into Taxi values('txn77ae344','Driving','Sedan','MH3EE5643');
insert into Taxi values('txn89oi121','Driving','Sedan','TN6BA9430');
insert into Taxi values('txn01ab902','Searching_for_pickup','Prime Sedan','KA8IB2598');
insert into Taxi values('txn01ab903','Searching_for_pickup','Sedan','KA8IB2098');



insert into Passenger values('psn01aa001','kamat',null,'anand','On_Route','1980-07-15','M','Hindi','9845761976','234, B K Garudachar Complex, 4 Floor, Above Hotel Ajay Vihar, Chickpet,Bangalore','txn01aa001');
insert into Passenger values('psn21ab021','Aruna','J','Gopal','On_Route','1960-08-19','F','Kannada','9865761996','6, Shanti Niketan, Dr Ambedkar Road, Matunga (east),Bangalore','txn01ab002');
insert into Passenger values('psn45ab081','Charan',null,'Moorthy','On_Route','1967-03-25','M','Kannada','6745761998','102, Lakshmi Villa,Ponnam Street, Chamraj,Bangalore','txn23aa021');
insert into Passenger values('psn32aa570','Raja','P','pallank','On_Route','1980-07-15','M','Hindi','6805791986','056,3rd street 9th Phase,HSR Layout,Bangalore','txn41aa201');
insert into Passenger values('psn79be703','Deeksha','T','Suresh','On_Route','1991-09-22','F','Kannada','9845701366','505 Flatno,Poorva Panaroma,Bannarghatta,Bangalore','txn53ab061');
insert into Passenger values('psn91il954','Sonali',null,'Aarav','On_Route','1989-12-19','F','Hindi','9885761970','706 Flatno,L&T South City,Electronic City,Bangalore','txn91ab068');
insert into Passenger values('psn53aa689','Poonam',null,'kanna','On_Route','1970-05-05','F','Hindi','9949701251','302 Flt no,Song of the South,Yellanahalli,Bangalore','txn77ae344');
insert into Passenger values('psn55ha805','Mani',null,'Vedaraman','On_Route','1964-02-27','M','Kannada','9835765906','102,6th Street,25th main,Krishnarajapuram,Bangalore','txn89oi121');
insert into Passenger values('psn55ha806','Tanisha',null,'Dhadu','Searching_for_Ride','1964-02-27','F','Kannada','9835765956','102,6th Street,25th main,Krishnarajapuram,Bangalore',null);
insert into Passenger values('psn55ha807','Laxmi',null,'Anand','Offline','1964-07-13','F','Kannada','9835761956','102,6th Street,25th main,Krishnarajapuram,Bangalore',null);
insert into Passenger values('psn55ha808','Thanuj',null,'Kiran','Searching_for_Ride','1980-08-06','M','Male','9835361956','102,6th Street,25th main,Krishnarajapuram,Bangalore',null);


insert into Drive_Taxi values('dtn01aa001','tms01aa001','txn01aa001','psn01aa001');
insert into Drive_Taxi values('dtn01aa002','tms01ab002','txn01ab002','psn21ab021');
insert into Drive_Taxi values('dtn01aa003','tms23aa021','txn23aa021','psn45ab081');
insert into Drive_Taxi values('dtn01aa004','tms31aa201','txn41aa201','psn32aa570');
insert into Drive_Taxi values('dtn01aa005','tms21ab061','txn53ab061','psn79be703');
insert into Drive_Taxi values('dtn01aa006','tms51aa007','txn91ab068','psn91il954');
insert into Drive_Taxi values('dtn01aa007','tms34ab079','txn77ae344','psn53aa689');
insert into Drive_Taxi values('dtn01aa008','tms91ab232','txn89oi121','psn53aa689');
insert into Drive_Taxi values('dtn01aa009','tms11ab290','txn01ab902',NULL);
insert into Drive_Taxi values('dtn01aa010','tms11ab291','txn01ab903',NULL);

insert into Taxi_Available values('sel01aa001','txn01ab902','Jayanagar','dtn01aa009');
insert into Taxi_Available values('sel01aa002','txn01ab903','JPnagar','dtn01aa010');

insert into Routes values('rot01aa001','JPnagar','JPnagar',5,'Jayanagar East',6,'17:40:00','17:55:00','tms01aa001');
insert into Routes values('rot01ab022','Yellanahalli','Banashankari',6,'JPnagar',10,'13:20:00','13:40:00','tms01ab002');
insert into Routes values('rot01ab022','Yellanahalli','Yellanahalli',3,'Banashankari',0,'13:20:00','13:50:00','tms01ab002');
insert into Routes values('rot36aa071','Basavangudi','Basavangudi',5,'Jayanagar',0,'17:40:00','17:55:00','tms23aa021');
insert into Routes values('rot90az087','Vishveshapuram','Jayanagar',6,'Byrasandra',10,'14:00:00','14:20:00','tms31aa201');
insert into Routes values('rot90az087','Vishveshapuram','Vishveshapuram',5,'Jayanagar',0,'14:20:00','14:35:00','tms31aa201');
insert into Routes values('rot70jz054','Basavangudi','Yediyur',4,'Byrasandra',0,'16:00:00','16:20:00','tms21ab061');
insert into Routes values('rot70jz054','Basavangudi','Basavangudi',5,'Yediyur',0,'16:20:00','16:43:00','tms21ab061');
insert into Routes values('rot70gz042','Vishveshapuram','Vishveshapuram',4,'Yediyur',0,'14:00:00','14:13:00','tms51aa007');
insert into Routes values('rot79go051','JPnagar','JPnagar',6,'Byrasandra',0,'09:45:00','10:10:00','tms34ab079');
insert into Routes values('rot13gx872','Ganesh Mandir','Ganesh Mandir',4,'Basavangudi',0,'10:15:00','10:25:00','tms91ab232');

insert into Booking_Options values('bok01aa001','psn01aa001',40,'JPnagar','Jayanagar East','Immidiate');
insert into Booking_Options values('bok01ab002','psn21ab021',90,'Yellanahali','JPnagar','Immidiate');
insert into Booking_Options values('bok09ab008','psn45ab081',80,'Basavangudi','Jayanagar','Advanced');
insert into Booking_Options values('bok07ab567','psn32aa570',90,'Vishveshapuram','Byrasandra','Advanced');
insert into Booking_Options values('bok22kb090','psn79be703',100,'Basavangudi','Byrasandra','Immidiate');
insert into Booking_Options values('bok82sb093','psn91il954',50,'Vishveshapuram','Yediyur','Immidiate');
insert into Booking_Options values('bok11bb041','psn53aa689',50,'JPnagar','Byrasandra','Immidiate');
insert into Booking_Options values('bok12fb123','psn55ha805',40,'Ganesh Mandir','Basavangudi','Immidiate');
#insert into Booking_Options values('bok12fb124','psn55ha806',40,'BTM Layout','Jayanagr','Immidiate');
#insert into Booking_Options values('bok12fb125','psn55ha808',40,'Jayanagr','JPnagar','Immidiate');

insert into Areas values('JPnagar','Jayanagar East',5,null,null,'Banashankari',6,'BTM Layout',4);
insert into Areas values('BTM Layout','Jayanagar East',6,null,null,'JPnagar',4,null,null);
insert into Areas values('Jayanagar','Vishveshapuram',5,'Byrasandra',6,'Basavangudi',5,'Koramangala',10);
insert into Areas values('Banashankari','Yediyur',5,'Yellanahalli',3,'Kumaraswami Layout',4,'JPnagar',6);
insert into Areas values('Yediyur','Jayanagar',6,'Banashankari',5,'Basavangudi',5,'Byrasandra',4);
insert into Areas values('Basavangudi','Vishveshapuram',4,'Ganesh Mandir',4,'Hanumanth Nagar',5,'Yediyur',5);
insert into Areas values('Byrasandra','Jayanagar',6,'JPnagar',6,'Yediyur',4,'Mdivala',7);
insert into Areas values('Vishveshapuram',null,null,'Yediyur',4,'Chamrajpet',6,'Jayanagr',5);

insert into Feedback values('fbk01aa001',5,4,5,'Aravind@gmail.com',4.5,'psn01aa001','tms01aa001');
insert into Feedback values('fbk02aa002',5,4,5,'Aravind@gmail.com',4.5,'psn21ab021','tms01ab002');
insert into Feedback values('fbk92aa055',4,4,5,'Aravind@gmail.com',4.4,'psn45ab081','tms23aa021');
insert into Feedback values('fbk53ab043',4,5,5,'Aravind@gmail.com',4.4,'psn32aa570','tms31aa201');
insert into Feedback values('fbk03ab064',5,5,4,'Aravind@gmail.com',4.6,'psn79be703','tms21ab061');
insert into Feedback values('fbk83xb114',5,4,5,'Aravind@gmail.com',4.6,'psn91il954','tms51aa007');
insert into Feedback values('fbk62xi109',5,4,5,'Aravind@gmail.com',4.4,'psn53aa689','tms34ab079');
insert into Feedback values('fbk22td476',5,4,5,'Aravind@gmail.com',4.5,'psn55ha805','tms91ab232');

insert into Bill_Details values('pmt01aa001',40,0,'2020-10-14','Cash',0,'dtn01aa001');
insert into Bill_Details values('pmt02aa002',100,0,'2020-11-11','Cash',0,'dtn01aa002');
insert into Bill_Details values('pmt02ba982',80,80,'2020-12-13','Online',0,'dtn01aa003');
insert into Bill_Details values('pmt02sx709',90,90,'2020-12-28','Online',0,'dtn01aa004');
insert into Bill_Details values('pmt72fa084',100,0,'2021-01-05','Cash',0,'dtn01aa005');
insert into Bill_Details values('pmt04da026',50,0,'2021-02-18','Cash',0,'dtn01aa006');
insert into Bill_Details values('pmt02ya003',40,0,'2021-02-21','Google Pay',10,'dtn01aa007');
insert into Bill_Details values('pmt65mc546',40,0,'2021-04-18','Cash',0,'dtn01aa008');

insert into Trip_Details values('tpd01aa001','dtn01aa001','17:40:00','17:55:00','pmt01aa001');
insert into Trip_Details values('tpd01ab021','dtn01aa002','13:20:00','13:50:00','pmt02aa002');
insert into Trip_Details values('tpd23fd895','dtn01aa003','17:40:00','17:55:00','pmt02ba982');
insert into Trip_Details values('tpd54uj678','dtn01aa004','14:00:00','14:35:00','pmt02sx709');
insert into Trip_Details values('tpd12dc034','dtn01aa005','16:00:00','16:43:00','pmt72fa084');
insert into Trip_Details values('tpd51zb081','dtn01aa006','14:00:00','14:13:00','pmt04da026');
insert into Trip_Details values('tpd91ab223','dtn01aa007','09:45:00','10:10:00','pmt02ya003');
insert into Trip_Details values('tpd21qb174','dtn01aa008','10:15:00','10:25:00','pmt65mc546');

insert into Booking_Details values('bkd01aa001','1122',2,'dtn01aa001');
insert into Booking_Details values('bkd02ba002','3212',1,'dtn01aa002');
insert into Booking_Details values('bkd02av782','4513',0.5,'dtn01aa003');
insert into Booking_Details values('bkd72sm004','7312',2.5,'dtn01aa004');
insert into Booking_Details values('bkd15kh143','9985',5,'dtn01aa005');
insert into Booking_Details values('bkd02aa902','5676',6,'dtn01aa006');
insert into Booking_Details values('bkd02ak223','6729',3,'dtn01aa007');
insert into Booking_Details values('bkd02af945','9054',10,'dtn01aa008');

insert into Violation_Records values('vir01aa001','tms01aa001','license expiration',1000);
insert into Violation_Records values('vir01aa002','tms01ab002','license expiration',1000);
insert into Violation_Records values('vir01aa672','tms01ab002','speedimg',1000);
insert into Violation_Records values('vir01aa962','tms23aa021','no seatbelt',500);
insert into Violation_Records values('vir01aa436','tms31aa201','missing emission certificate',500);
insert into Violation_Records values('vir01aa496','tms31aa201','no seatbelt',1000);
insert into Violation_Records values('vir01aa573','tms21ab061','speeding',700);
insert into Violation_Records values('vir01aa973','tms34ab079','speeding',700);


insert into Accident_Records values('acr01aa001','txn01aa001','2019-03-22','Jayanagar',5000);
insert into Accident_Records values('acr01aa003','txn01ab002','2005-06-15','HSR layout',10000);
insert into Accident_Records values('acr01aa076','txn23aa021','2015-12-02','Chmrajpet',5000);
insert into Accident_Records values('acr01aa081','txn23aa021','2015-07-07','Bilakahalli',5000);
insert into Accident_Records values('acr01aa107','txn41aa201','2014-12-01','MG road',7000);
insert into Accident_Records values('acr01aa896','txn53ab061','2019-08-06','Jayanagar',5000);
insert into Accident_Records values('acr01aa877','txn77ae344','2012-04-29','K R Puram',8000);
insert into Accident_Records values('acr01aa661','txn89oi121','2019-03-02','Whitefield',5000);

insert into Maintanance_Records values('mtr01aa001','Bangalore',5000,'2020-10-05',null,'txn01aa001');
insert into Maintanance_Records values('mtr02ab002','Bangalore',5000,'2020-02-01',null,'txn01ab002');
insert into Maintanance_Records values('mtr02ab003','Bangalore',5000,'2020-02-01',null,'txn23aa021');
insert into Maintanance_Records values('mtr02ab004','Bangalore',5000,'2020-02-01',null,'txn41aa201');
insert into Maintanance_Records values('mtr02ab005','Bangalore',5000,'2020-02-01',null,'txn53ab061');
insert into Maintanance_Records values('mtr02ab006','Bangalore',5000,'2020-02-01',null,'txn77ae344');
insert into Maintanance_Records values('mtr02ab007','Bangalore',5000,'2020-02-01',null,'txn89oi121');
insert into Maintanance_Records values('mtr02ab008','Bangalore',5000,'2020-02-01',null,'txn89oi121');
insert into Maintanance_Records values('mtr02ab009','Bangalore',5000,'2020-02-01',null,'txn77ae344');


insert into Accident_Driver values('acr01aa001','tms01aa001');
insert into Accident_Driver values('acr01aa003','tms01ab002');
insert into Accident_Driver values('acr01aa076','tms23aa021');
insert into Accident_Driver values('acr01aa081','tms23aa021');
insert into Accident_Driver values('acr01aa107','tms31aa201');
insert into Accident_Driver values('acr01aa896','tms21ab061');
insert into Accident_Driver values('acr01aa877','tms34ab079');
insert into Accident_Driver values('acr01aa661','tms91ab232');