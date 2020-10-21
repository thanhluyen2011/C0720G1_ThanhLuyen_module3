create database baitap;
create table customers(
customerNumber int not null primary key,
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50) not null,
city varchar(50) not null,
state varchar(50) not null,
postalCode varchar(15) not null,
country varchar(50) not null,
creditLimit float,
salesRepEmployeeNumber int,
foreign key (salesRepEmployeeNumber) references employees(employeeNumber)
);
create table orders(
orderNumber int not  null primary key,
orderDate date not null,
requiredDate date not null,
shippedDate date,
status varchar(15) not null,
comments text,
quantityOrdered int not null,
priceEach float not null,
customerNumber int,
foreign key(customerNumber) references customers(customerNumber)
);
create table payments(
customerNumber int not null primary key,
checkNumber varchar(50) not null,
paymentDate date not null,
amount float not null,
foreign key (customerNumber) references customers(customerNumber)
);
create table products(
productsCode varchar(15) not null primary key,
productName varchar(70) not null,
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice float not null,
MSRP float not null,
productLine varchar(50) not null,
foreign key (productLine) references productlines(productLine)
);
create table orderDetails(
ordernumber int not null,
productcode varchar(15) not null,
foreign key (productcode) references products(productsCode),
foreign key (ordernumber) references orders(orderNumber)
) ;
create table productlines(
productLine varchar(50) not null primary key,
textDescription text,
image varchar(50)
);
create table employees(
employeeNumber int not null primary key,
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(100) not null,
jobTitle varchar(50) not null,
reportTo int,
officeCode varchar(50),
foreign key (officeCode) references offices(officeCode)
);
create table offices(
officeCode varchar(50) not null primary key,
city varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
state varchar(50),
country varchar(50) not null,
postalCode varchar(15)
);