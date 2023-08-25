create database Assignmnet10Db

use Assignmnet10Db

create table Articles
(ArticleId int primary key,
Title nvarchar(50),
Content nvarchar(100),
PublishDate datetime)

drop table Articles

insert into Articles values(101,'Getting Started with ASP.NET', 'This article explains the basics of ASP.NET development', '5/9/2020')
insert into Articles values(102,'Introduction to Database Design', 'Learn the fundamentals of designing a relational database', '4/10/2021')
insert into Articles values(103,'Responsive Web Design Techniques', 'Explore various techniques to make your websites responsive', '12/10/2019')

select * from Articles