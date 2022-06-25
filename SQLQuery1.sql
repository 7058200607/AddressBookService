---create address Book Service
--UC1
create database Address_Book_service;
---UC2
use Address_Book_service;
create table Address_Book(id int identity(1,1)primary key,FName varchar(200),LName varchar(200),Address varchar(200),City varchar(200),State varchar(200),Zip varchar(200),PhoneNumber varchar(200),email varchar(200),BookName varchar(200),type varchar(200));
---UC3
select* from Address_Book;
---UC4
insert into Address_Book values('vrushali','Joshi','PundlikNagar','aurangabad','MH',431001,7820060781,'vrushalijoshi589@gmail.com');
insert into Address_Book values('Mrunali','Pawar','Garkheda','aurangabd','MH',431001,9825060781,'mrunalipawar123@gmail.com');
insert into Address_Book values('Punam','patil','samarthNagar','aurangabad','MH',431001,8920060781,'punampatil896@gmail.com');
insert into Address_Book values('saurabh','patil','cidco','aurangabad','MH',431001,9620060781,'saurabhp59@gmail.com');
insert into Address_Book values('ajay','wagh','cidco','aurangabad','MH',431001,7020060781,'ajaywagh9@gmail.com');
---UC5 Edit data 
Update Address_Book set FName ='mayuri' where FName='vrushali'
---UC5 delete data from address book service
delete Address_Book where FName='mayuri'
---UC6 
select count (state) from Address_Book
---UC7 ability to retrieve all data of city or state form address book
select *from Address_Book where City ='aurangabad'or State='MH';
---UC8 ability to sort data find a city of person name
select FName,City from Address_Book order By City asc;
---UC9
alter table Address_Book add BookName varchar(200),type varchar(200)
update Address_Book set BookName='One',type='friend'where FName='mayuri'
update Address_Book set BookName='Two',type='family'where FName='Mrunali'
update Address_Book set BookName='Three',type='family'where FName='punam'
update Address_Book set BookName ='four',type='friend'where FName='saurabh'
update Address_Book set BookName='five',type='friend'where FName='ajay'
select* from Address_Book;
---UC10
insert into Address_Book values
('komal','banswal','bansilalnagar','aurangabad','MH','431001','7895671357','komal12@gmail.com','one','friend')
select count(type) as counting from Address_Book where type ='friend'
select count(type) as counting from Address_Book;
---UC11 add same person as both friend and family
insert into Address_Book values
('komal','banswal','bansilalnagar','aurangabad','MH','431001','7945632189','komal12@gmail.com','one','family')
select *from Address_Book;

