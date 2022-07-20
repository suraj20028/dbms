create database bank;
use bank;

create table BRANCH(branch_name varchar(20),branch_city varchar(20),assets real,
primary key(branch_name)); 

create table ACCOUNTS(accno int,branch_name varchar(20),balance real,
foreign key(branch_name) references BRANCH(branch_name),
primary key(accno)); 

create table DEPOSITER(customer_name varchar(20),customer_street varchar(20),customer_city varchar(20),
primary key(customer_name)); 

create table LOAN(loan_no int,branch_name varchar(20),amount real,
foreign key(branch_name) references BRANCH(branch_name),
primary key(loan_no)); 

create table BORROWER(customer_name varchar(20),loan_no int,
foreign key(loan_no) references LOAN(loan_no),
foreign key(customer_name) references DEPOSITER(customer_name),
primary key(customer_name,loan_no)); 

insert into BRANCH values("SUB","BANGALORE",3.2);
insert into BRANCH values("UP","BANGALORE",3.6);
insert into BRANCH values("URBAN","CHENNAI",6.7);
insert into BRANCH values("RURAL","MUMBAI",5.5);
insert into BRANCH values("SEA","KOLKOTA",4.5);

insert into ACCOUNTS values(1,"SUB",20000);
insert into ACCOUNTS values(2,"UP",30000);
insert into ACCOUNTS values(3,"URBAN",35000);
insert into ACCOUNTS values(4,"RURAL",12400);
insert into ACCOUNTS values(5,"SEA",32000);

insert into DEPOSITER values("UDAYA","CHENNAI","ANNA");
insert into DEPOSITER values("LOKESH","CHENNAI","POMBLE");
insert into DEPOSITER values("MOUNEASH","MUMBAI","MG ROAD");
insert into DEPOSITER values("VIKRAM","BANGALORE","BOMMASANDRA");
insert into DEPOSITER values("SOMA","GOA","PANAJI");

insert into LOAN values(111,"SUB",20000);
insert into LOAN values(222,"UP",80000);
insert into LOAN values(333,"URBAN",87000);
insert into LOAN values(444,"RURAL",25000);
insert into LOAN values(555,"SEA",50000);

insert into BORROWER values("UDAYA",111);
insert into BORROWER values("LOKESH",222);
insert into BORROWER values("MOUNEASH",333);
insert into BORROWER values("VIKRAM",444);
insert into BORROWER values("SOMA",555);

SELECT * FROM BRANCH;
SELECT * FROM ACCOUNTS;
SELECT * FROM DEPOSITER;
SELECT * FROM LOAN;
SELECT * FROM BORROWER;

SELECT COUNT(branch_city) from BRANCH
where branch_city = "BANGALORE";

DELETE FROM ACCOUNTS 
WHERE BRANCH_NAME IN (SELECT BRANCH_NAME FROM BRANCH WHERE BRANCH_CITY = "BANGALORE");
