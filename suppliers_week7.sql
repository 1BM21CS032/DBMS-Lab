create database Supplier;
use Supplier;

create table suppliers(
sid int primary key,
sname char(25),
city char(25)
);

create table parts(
pid int primary key,
pname char(15),
color char(15)
);

create table catalog(
sid int,
pid int,
cost int,
primary key (sid, pid),
foreign key (sid) references suppliers(sid)
on update cascade on delete cascade,
foreign key (pid) references parts(pid)
on update cascade on delete cascade
);

insert into suppliers values 
(10001, 'Acme Widget', 'Bangalore'),
(10002, 'Johns', 'Kolkata'),
(10003, 'Vimal', 'Mumbai'),
(10004, 'Reliance', 'Delhi');

insert into parts values
(20001, 'Book', 'Red'),
(20002, 'Pen', 'Red'),
(20003, 'Pencil', 'Green'),
(20004, 'Mobile', 'Green'),
(20005, 'Charger', 'Black');

insert into catalog values
(10001, 20001, 10),
(10001, 20002, 10),
(10001, 20003, 30),
(10001, 20004, 10),
(10001, 20005, 10),
(10002, 20001, 10),
(10002, 20002, 20),
(10003, 20003, 30),
(10004, 20003, 40);
