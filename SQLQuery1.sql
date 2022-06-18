---create address Book Service
--UC1
create database Address_Book_service;
---UC2
use Address_Book_service;
create table Address_Book(FName varchar(200),LName varchar(200),Address varchar(200),City varchar(200),State varchar(200),Zip varchar(200),PhoneNumber varchar(200),email varchar(200));
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
