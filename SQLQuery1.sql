---create address Book Service
--UC1
create database Address_Book_service;
---UC2
use Address_Book_service;
create table Address_Book(FName varchar(200),LName varchar(200),Address varchar(200),City varchar(200),State varchar(200),Zip varchar(200),PhoneNumber varchar(200),email varchar(200));
---UC3
select* from Address_Book;