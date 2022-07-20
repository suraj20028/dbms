create database airline1;
use airline1;
create table flights(
flno int, fro varchar(10),too varchar(10),distance int,departs time,arrives time,price int,primary key(flno));
CREATE TABLE aircraft( 
  aid INT,
  aname VARCHAR(20),
  crusingrange int,
  PRIMARY KEY(aid));
  CREATE TABLE employee(
	eid INT,
  ename VARCHAR(20),
  salary VARCHAR(10),
 PRIMARY KEY(eid));
CREATE TABLE certified(
  eid INT,
  aid INT,
  PRIMARY KEY(eid,aid),
  FOREIGN KEY(aid) REFERENCES aircraft(aid),
  FOREIGN KEY(eid) REFERENCES employee(eid));

insert into aircraft values(101,'747',3000);
insert into aircraft values(102,'boeing',900);
insert into aircraft values(103,'647',800);
insert into aircraft values(104,'dreamliner',10000);
insert into aircraft values(105,'boeing',3500);
insert into aircraft values(106,'707',1500);
insert into aircraft values(107,'dream',12000);

insert into employee values(701,'A',50000);
insert into employee values(702,'B',100000);
insert into employee values(703,'C',150000);
insert into employee values(704,'D',90000);
insert into employee values(705,'E',40000);
insert into employee values(706,'F',60000);
insert into employee values(707,'G',90000);

insert into certified values(701,101);
insert into certified values(701,102);
insert into certified values(701,106);
insert into certified values(701,105);
insert into certified values(702,104);
insert into certified values(703,104);
insert into certified values(704,104);
insert into certified values(702,107);
insert into certified values(703,107);
insert into certified values(704,107);
insert into certified values(702,101);
insert into certified values(703,105);
insert into certified values(704,105);
insert into certified values(705,103);

insert into flights values(101,'bangalore','delhi',2500,timestamp '2005-05-13 07:15:31',timestamp '2005-05-13 17:15:31',5000);
insert into flights values(102,'bangalore','lucknow',300,timestamp '2005-05-13 07:15:31',timestamp '2005-05-13 11:15:31',6000);
insert into flights values(103,'lucknow','delhi',500,timestamp '2005-05-13 07:15:31',timestamp '2005-05-13 17:15:31',3000);
insert into flights values(107,'bangalore','frankfurt',8000,timestamp '2005-05-13 07:15:31',timestamp '2005-05-13 22:15:31',60000);
insert into flights values(104,'bangalore','frankfurt',8500,timestamp '2005-05-13 07:15:31',timestamp '2005-05-13 23:15:31',75000);
insert into flights values(105,'kolkota','delhi',3400,timestamp '2005-05-13 07:15:31',timestamp '2005-05-13 09:15:31',7000);

SELECT * FROM flights;
