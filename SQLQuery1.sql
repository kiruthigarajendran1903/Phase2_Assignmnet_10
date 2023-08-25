create database CustsDb
use CustsDb

create table Customer
(CustomerId int primary key,
CustomerName nvarchar(50),
CustomerCity nvarchar(50),
CustomerODLimit float)

insert into Customer values(1,'Sam','Goa',98000.50)
insert into Customer values(2,'Raj','Pune',76000.50)
insert into Customer values(3,'Mahi','Delhi',98000.50)
insert into Customer values(4,'Gagan','GuruGram',76000.50)
insert into Customer values(5,'Shilpa','Hyderabad',85000.50)
insert into Customer values(11,'Shruti','Noida',84000.50)

select * from Customer

insert into Customer values(13,'jai','Goa',98000.50)
insert into Customer values(15,'Raj','Chennai',890000.50)
insert into Customer values(17,'Mahi','Delhi',98000.50)
insert into Customer values(16,'Gugan','Mumbai',67000.50)
insert into Customer values(19,'Shilpa','Hyderabad',85000.50)
insert into Customer values(21,'venil','Noida',84000.50)
