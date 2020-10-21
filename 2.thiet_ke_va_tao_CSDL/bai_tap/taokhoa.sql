-- create database:
create database `java_web_back_end_development`;
-- use database:
use `java_web_back_end_development`;
create table Customers(
customer_number int not null unique auto_increment,
fullnamee varchar(50),
address varchar(50),
email varchar(30) unique,
phone varchar(11) unique,
PRIMARY KEY(customer_number)
);
create table Accounts(
 account_number int not null unique auto_increment ,
 account_type varchar(15),
 account_date datetime,
 balance float,
 PRIMARY KEY(account_number)
);
create table  transactions(
tran_number varchar(11) unique,	
account_number int,
account_date datetime,
amounts int,
Accounts_description varchar(50),
PRIMARY KEY(tran_number),
 FOREIGN KEY (account_number) REFERENCES Accounts(account_number)
);
