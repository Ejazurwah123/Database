create DATABASE IF NOT EXISTS AI_BASH;
use AI_BASH;


-- creating table for Users
create table users (
user_id varchar(8) NOT NULL unique ,
Name varchar(20),
Email varchar(20),
Contact varchar(12),
Address varchar(50),
Degree varchar(20),
Grad_year varchar(4),
PRIMARY KEY(user_id)
);

-- inserting values in Users table
INSERT INTO users (user_id,Name,Email,Contact,Address,Degree,Grad_year) 
values ('user0001','Urwah Ejaz','abc@gmail.com','00440110099','Wah Cantt,Pakistan','AI','2026'),
	   ('user0002','Marwah Ejaz','def@gmail.com','03294827282','Islamabad,Pakistan','DS','2024'),
	   ('user0003','Namrah Fahad','fgh@gmail.com','03395927392','Faisalbad,Pakistan','SE','2019'),
       ('user0004','Warda Farhan','hij@gmail.com','03306038202','Jeddah,Saudia','CS','2015'),
	   ('user0005','Ali Hassan','klm@gmail.com','0480705870','Karachi,Pakistan','CS','2021'),
       ('user0006','Zain Raza','zrr2@gmail.com','04373929249','Parachinaar,Pakistan','AI','2026'),
       ('user0007','Azeem khan','akkk@gmail.com','68493827504','Sargodha,Pakistan','DS','2023'),
       ('user0008','Mustafa Rehman','mustafa@gmail.com','06857476948','Italy,Paris','SE','2024'),
       ('user0009','Usman Khan','ukk@gmail.com','958473920584','Lahore,Pakistan','EE','2025');
-- select * from users

-- ---------------------------------------------------------------------------- Category Table------------------------------------------------------------------------------ 
create table categoryy (
category_id int auto_increment NOT NULL unique,
c_name varchar(20),
PRIMARY KEY(category_id)
);

-- now inserting data in to it 
INSERT INTO categoryy (c_name)
values ('Algorithms'),
		('ML-Models'),
		('Computing'),
		('DSA-Implementation');
-- select * from categoryy

-- ------------------------------------------------------------------------------ Subscriber Table------------------------------------------------------------------------------ 
create table Subscriber (
subscriber_ID varchar(8) not null unique,
statuss varchar(5),
Password1 varchar(9),
Subscription_date varchar(11),
user_id varchar(8),
PRIMARY KEY(subscriber_ID),
FOREIGN KEY(user_id) references users(user_id)
);

insert into Subscriber(subscriber_ID,statuss,Password1,Subscription_date,user_id)
values ('29388','Paid','1234567','01-05-2020','user0003'),
	   ('34764','Paid','meow1234','11-12-2023','user0007'),
	   ('54324','Free','candyland','10-02-2022','user0001'),
        ('66666','Free','theunsow','09-04-2023','user0006');

-- select * from Subscriber 
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------- 

-- -- --------------------------------------------------- Developer's Table-- ---------------------------------------------------------------------------- 
create table Developers (
Developer_id int not null unique,
subscriber_ID varchar(8),
PRIMARY KEY(Developer_id),
foreign key(subscriber_ID) references Subscriber(subscriber_ID)
); 

insert into Developers(Developer_id,subscriber_ID)
values (101,'54324'),
		(102,'66666'),
		(103,'34764');
-- select * from Developers


-- -----------------------------Project Table--------------------------------------------------------------------------------------------------------- 
create table Project (
Project_ID varchar(8) not null unique,
Description1 varchar(256),
status1 varchar(2),
belonging_status varchar(3),
PRIMARY KEY(Project_ID),
Developer_id int,
foreign key(Project_ID) references Project(Project_ID),
foreign key(Developer_id) references Developers(Developer_id)
); 
# inserting values in the Project table
insert into Project(Project_ID,Description1,status1,belonging_status,Developer_id)
values('0001','Face Recognition','P','AI','101'),
	  ('0002','Tic Tac Toe Game','P','CS','102'),
      ('0003','Database Creation','D','DS','103');
-- select * from Project;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------ 

-- ---------------------------------------------------------------------------- Bug's Table --------------------------------------------------------------------------- 

create table Bugs (
Bug_ID int not null auto_increment unique,
details varchar(225),
Datee varchar(11),
subscriber_ID varchar(8),
Project_ID varchar(8),
primary key(Bug_ID),
foreign key(subscriber_ID) references Subscriber(subscriber_ID),
foreign key(Project_ID) references Project(Project_ID)
);

ALTER TABLE Bugs
ADD column Developer_id int;
ALTER TABLE Bugs
ADD FOREIGN KEY (Developer_id) REFERENCES Developers(Developer_id);
insert into Bugs (details,Datee,subscriber_ID,Project_ID,Developer_id)
values ('Detector not working','02-03-2024','54324','0001','101'),
('Wrong Queries, Fix it','11-03-2024','34764','0003','103');
-- select * from Bug
-- ------------------------------------------------------------------------------------------------------------------------------------------------------ 
-- ---------------------------------------------------------------------------- Update's Table ----------------------------------------------------------
create table Updates (
update_id varchar(8) not null unique,
upd_name varchar(20),
upd_status varchar(10),
upd_details varchar(256),
ud_type varchar(10),
Developer_id int,
Project_ID varchar(8),
PRIMARY KEY(update_id),
FOREIGN KEY (Developer_id) REFERENCES Developers(Developer_id),
foreign key(Project_ID) references Project(Project_ID)
);
-- ------------------------------------------------------------------------------------------------------------------------------------------------------ 
-- ---------------------------------------------------------------------------- Transaction's Table ----------------------------------------------------------
create table transaction(
transaction_id varchar(6) not null unique,
t_date varchar(11),
Project_ID varchar(8),
primary key(transaction_id),
foreign key(Project_ID) references Project(Project_ID)
);

-- adding transaction attribute in Updates entity
-- ALTER TABLE Updates
-- ADD column transaction_id varchar(6);
ALTER TABLE Updates
Add foreign key(transaction_id) references transaction(transaction_id);
-- adding data in transaction table 
insert into transaction(transaction_id,t_date,Project_ID)
values ('000022','05-03-2024','0001'),
       ('000023','05-04-2024','0003');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- now adding data in updates table
insert into Updates(update_id,upd_name,upd_status,upd_details,ud_type,Developer_id,Project_ID,transaction_id)
values ('00000001','Detector Fixed','Push','Face Detector whihc was not working now fixed','alpha','101','0001','000022') ,
('00000002','DataBase fixed','Push','Queries working fine','charlie','103','0003','000023');
-- select * from Updates

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------Donwloads Table----------------------------------------------------------  
create table Downloads (
d_id int not null unique auto_increment,
count_of_donwloads int,
Project_ID varchar(8),
user_id varchar(8),
primary key(d_id),
foreign key(Project_ID) references Project(Project_ID),
foreign key(user_id) references users(user_id)
);
insert into Downloads(count_of_donwloads,Project_ID,user_id)
values(1,'0001','user0009'),
(1,'0002','user0008'),
(1,'0003','user0007');
-- select * from Downloads 

 








