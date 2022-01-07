
create database triggers;
use triggers;
use Taxi_Management_System;

drop trigger if exists experience_verify;
delimiter //
Create trigger experience_verify
before insert 
on Driver
for each row
if new.Experience_yrs < 0 then set new.Experience_yrs = 0;
end if;//


insert into Driver values('tms01aa039','navi',null,'puram','1965-02-19','09:30:00','22:30:00',-5,'M','Hindi','8876761209');
select * from Driver;

drop trigger if exists taxi_select;
delimiter //
Create trigger taxi_select
after insert 
on Taxi
for each row	
begin
if new.VStatus='Searching_for_pickup' then insert into Taxi_Available(Taxi_id) 
values(new.Taxi_id);
end if;
end//

insert into Taxi values('txn01ab905','Searching_for_pickup','Sedan','KA9IK2898');
select * from Taxi_Available;
select * from Taxi;

drop trigger if exists id_Taxi;
set @x=0;
set @y=0;
set @z='a';
set @l='a';
set @m=0;
set @a=0;
set @b=0;
set @c=0;
delimiter //
Create trigger id_Taxi
before insert 
on Taxi
for each row
begin
if(@b<10) then
set new.Taxi_Id=concat('txn',@x,@y,@z,@l,@m,@a,@b+1);
set @b=@b+1;
elseif(@a<10) then
set new.Taxi_Id=concat('txn',@x,@y,@z,@l,@m,@a+1,0);
set @a=@a+1;
set@b=0;
elseif(@m<10) then
set new.Taxi_Id=concat('txn',@x,@y,@z,@l,@m+1,0,0);
set @m=@m+1;
set @a=@b=0;
elseif(@l<>'z') then
set new.Taxi_Id=concat('txn',@x,@y,@z,@l+1,0,0,0);
set @l=@l+1;
set @a=@b=@m=0;
elseif(@z<>'z') then
set new.Taxi_Id=concat('txn',@x,@y,@z+1,'a',0,0,0);
set @z=@z+1;
set @a=@b=@m=0;
set @l='a';
elseif(@y<10) then
set new.Taxi_Id=concat('txn',@x,@y+1,'a','a',0,0,0);
set @y=@y+1;
set @a=@b=@m=0;
set @l=@z='a';
elseif(@x<10) then
set new.Taxi_Id=concat('txn',@x+1,0,'a','a',0,0,0);
set @x=@x+1;
set @a=@b=@m=@y=0;
set @l=@z='a';
end if;
end//

drop trigger if exists id_Taxi_Available;
set @x1=0;
set @y1=0;
set @z1='a';
set @l1='a';
set @m1=0;
set @a1=0;
set @b1=0;
set @c1=0;
delimiter //
Create trigger id_Taxi_Available
before insert 
on Taxi_Available
for each row
begin
if(@b1<10) then
set new.select_Id=concat('sel',@x1,@y1,@z1,@l1,@m1,@a1,@b1+1);
set @b1=@b1+1;
elseif(@a1<10) then
set new.select_Id=concat('sel',@x1,@y1,@z1,@l1,@m1,@a1+1,0);
set @a1=@a1+1;
set@b1=0;
elseif(@m1<10) then
set new.select_Id=concat('sel',@x1,@y1,@z1,@l1,@m1+1,0,0);
set @m1=@m1+1;
set @a1=@b1=0;
elseif(@l1<>'z') then
set new.select_Id=concat('sel',@x1,@y1,@z1,@l1+1,0,0,0);
set @l1=@l1+1;
set @a1=@b1=@m1=0;
elseif(@z1<>'z') then
set new.select_Id=concat('sel',@x1,@y1,@z1+1,'a',0,0,0);
set @z1=@z1+1;
set @a1=@b1=@m1=0;
set @l1='a';
elseif(@y1<10) then
set new.select_Id=concat('sel',@x1,@y1+1,'a','a',0,0,0);
set @y1=@y1+1;
set @a1=@b1=@m1=0;
set @l1=@z1='a';
elseif(@x1<10) then
set new.select_Id=concat('sel',@x1+1,0,'a','a',0,0,0);
set @x1=@x1+1;
set @a1=@b1=@m1=@y1=0;
set @l1=@z1='a';
end if;
end//

set @total_distance=0;
set @route=null;
drop table if exists totalDistance;
create table totalDistance(route varchar(30),total_distance int);
drop procedure if exists cursor1;
delimiter //
create procedure cursor1()
begin
declare i int;
declare r varchar(10);
declare t int;
declare done int default false;
declare cur cursor for select Route_Id, distance_km from Routes;
declare continue handler for not found set done=true;
open cur;
myloop:loop
fetch cur into r,i ;
if done then
	leave myloop;
end if;
	if @route=null then set @total_distance=@total_distance+i;
	elseif @route=r then set @total_distance=@total_distance+i;
	else 
	insert into totalDistance values (@route,@total_distance);
	set @route=r;
	set @total_distance=i;
	end if;
end loop;
close cur;
end//

call cursor1();
select * from totalDistance;

set @total_time=0;
set @route=null;
drop table if exists totalTime;
create table totalTime(route varchar(30),total_time int);
drop procedure if exists cursor2;
delimiter //
create procedure cursor2()
begin
declare d int;
declare t1 time;
declare t2 time;
declare r varchar(10);
declare done int default false;
declare cur cursor for select Route_Id, delay_min,s_time,e_time from Routes;
declare continue handler for not found set done=true;
open cur;
myloop:loop
fetch cur into r,d,t1,t2 ;
if done then
	leave myloop;
end if;
	if @route=null then set @total_time = @total_time + d + (hour(t2) - hour(t1)) * 60 + minute(t2) - minute(t1);
	elseif @route=r then set @total_time = @total_time + d + (hour(t2) - hour(t1)) * 60 + minute(t2) - minute(t1);
	else 
	insert into totalTime values(@route,@total_time);
	set @route=r;
	set @total_time= @total_time + d + (hour(t2) - hour(t1)) * 60 + minute(t2) - minute(t1);
	end if;
end loop;
close cur;
end//

call cursor2();
select * from totalTime;
