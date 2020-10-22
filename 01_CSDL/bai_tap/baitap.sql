-- create database baitapvenha;
create table Products(
id int,
Name nvarchar(50),
UmageUrl nvarchar(1000),
Price int,
Discount int,
Stock int,
CategoryId int,
SupplierId int,
Description nvarchar(0)
);
insert into products(name,UmageUrl) values(50,1000);
select * from products;
create table Orders(
id int,
CreatedDate datetime,
ShippedDate datetime,
Status varchar(50),
Description nvarchar(0),
ShippingAddress nvarchar(500),
ShippingCity nvarchar(50),
PaymentType varchar(20),
CustomerId varchar(50),
EmployeeId varchar(50)
);
insert into orders(Status,ShippingAddress,ShippingCity,PaymentType,CustomerId,EmployeeId) values(50,500,50,20,50,50);
select * from orders;