create database taokhoangoai;
create table customers(
id int auto_increment primary key,
name varchar(50),
address varchar(200),
email varchar(100)
);
insert into customers(name,address,email) values ('a','b','c');
select*from customers;
create table orders(
id int auto_increment,
staff varchar(50),
primary key(id),
customer_id int,
foreign key (customer_id) references customers(id)
);
insert into orders(staff,customer_id) value(9,'ngu');
select*from orders;