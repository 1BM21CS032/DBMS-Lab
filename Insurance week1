create database Insurance;
show databases;
use Insurance;

create table Person(
driver_id varchar(5) primary key,
name char(20),
address varchar(20)
);

create table Car(
reg_num varchar(10) primary key,
model char(20),
year int(4)
);


create table Accident(
report_num int(4) primary key,
accident_date varchar(10),
location varchar(20)
);

create table Owns(
driver_id varchar(5),
reg_num varchar(10),
primary key (driver_id, reg_num),
foreign key (driver_id) references Person(driver_id),
foreign key (reg_num) references Car(reg_num)
);

create table Participated(
driver_id varchar(5),
reg_num varchar(10),
report_num int(4),
damage_amount int(7),
primary key (driver_id, reg_num, report_num),
foreign key (driver_id) references Person(driver_id),
foreign key (reg_num) references Car(reg_num),
foreign key (report_num) references Accident(report_num)
);

insert into Person values ('A01', 'Richard', 'Srinivas nagar'),
('A02', 'Pradeep', 'Rajaji nagar'), 
('A03', 'Smith', 'Ashok nagar'), 
('A04', 'Venu', 'N R Colony'), 
('A05', 'Jhon', 'Hanumanth nagar');

insert into Car values ('KA052250', 'Indica', 1990),
('KA031181', 'Lancer', 1957),
('KA095477', 'Toyota', 1998),
('KA053408', 'Honda', 2008),
('KA041702', 'Audi', 2005);

insert into Owns values ('A01', 'KA052250'),
('A02', 'KA031181'),
('A03', 'KA095477'),
('A04', 'KA053408'),
('A05', 'KA041702');

insert into Accident values (11, '01-Jan-03', 'Mysore Road'),
(12, '02-Feb-04', 'South end Circle'),
(13, '21-Jan-03', 'Bull temple Road'),
(14, '17-Feb-08', 'Mysore Road'),
(15, '04-Mar-05', 'Kanakpura Road');

insert into Participated values ('A01', 'KA052250', 11, 10000),
('A02', 'KA031181', 12, 50000),
('A03', 'KA095477', 13, 25000),
('A04', 'KA053408', 14, 3000),
('A05', 'KA041702', 15, 5000);

select accident_date, location from Accident;
select driver_id from Participated where damage_amount >= 25000;

select * from Participated order by damage_amount desc;
select avg (damage_amount) from Participated;
delete from Participated where damage_amount <= (select avg (damage_amount) from Participated);
select name from Person per, Participated par where per.driver_id=par.driver_id and par.damage_amount > (select avg(damage_amount) from Participated);
select max(damage_amount) from Participated;

delete form Participated where damage_amount<(select t.amt from (select avg (da,age cmount) as amt from participated)t);



