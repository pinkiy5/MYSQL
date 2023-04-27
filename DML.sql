 # DDL (CREATE, ALTER , DROP, TRUNCATE)
USE c4119;
# Create table table_name
create table JAVAStudent ( id int primary key,  
sname varchar(20) not null, 
sphone bigint(11) not null unique, 
semail varchar(30) not null unique, 
sadd varchar(50), 
squalification varchar(10) not null, 
sdept varchar(20));
# insert multiple rows
insert into JAVAstudent values 
# insert the value
(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL'),
(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT'),
(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL'),
(7,'ABHISHEK',834821188,'abhishek@gmail.com','darjeeling','MSc','IT'),
(8,'BIDISHA',834824488,'bidi@gmail.com','jammu and kashmir','BE','CIVIL'),
(9,'TIYASA',834800288,'tiyasa@gmail.com','chennai','BSc','CS');
# add new column
alter table JAVAStudent ADD age int after sname;
# modify datatype size
alter table JAVAStudent MODIFY squalification varchar(20) not null;
#modify constraint
alter table JAVAStudent MODIFY sphone int not null;
# drop column
alter table JAVAStudent DROP COLUMN sdept;
# change column name
alter table JAVAStudent CHANGE COLUMN age sage int;
# rename table name
alter table JAVAStudent RENAME TO student_details;
# insert single row
insert into student_details values
(10,'Pallabi',27,785955229,'pallabi@gmail.com','kolkata','MSC');


# DML --- INSERT, UPDATE, DELETE
update student_details set sage = 20 where ID = 1;
update student_details set sage = 23 where ID = 2;
update student_details set sage = 25 where ID = 3;
update student_details set sage = 22 where ID = 4;
update student_details set sage = 26 where ID = 5;
update student_details set sage = 22 where ID = 6;
update student_details set sage = 25 where ID = 7;
update student_details set sage = 27 where ID = 8;
update student_details set sage = 21 where ID = 9;
alter table student_details add fees double after squalification;
update student_details set fees = 1000.50 where ID = 1;
update student_details set fees = 1000.50 where ID = 2;
update student_details set fees = 1000.50 where ID = 3;
update student_details set fees = 1000.50 where ID = 4;
update student_details set fees = 1000.50 where ID = 5;
update student_details set fees = 1000.50 where ID = 6;
update student_details set fees = 1000.50 where ID = 7;
update student_details set fees = 1000.50 where ID = 8;
update student_details set fees = 1000.50 where ID = 9;
update student_details set fees = 1000.50 where ID = 10;
update student_details set squalification = 'BCA' where sname ='ARNAB';
update student_details set fees = 2000.50;
update student_details set sadd= 'mumbai' where sname ='puja';
# delete any specific row
delete from student_details where sname='pallabi'; 
# delete any specific column 
alter table student_details DROP COLUMN fees;

#select
select * from student_details where sname ='ARNAB';
#and ( both the condition should true )
select * from student_details  where sadd = 'Kolkata' and squalification = 'BE';
#or ( any one condition should true )
select * from student_details where sadd = 'Mumbai' or squalification = 'BE';
#not
select * from student_details where squalification != 'BE';
#in
select * from student_details where sadd in('mumbai','goa');
#starts with
select * from student_details where sname like 'A%';
#ends with
select * from student_details where sname like '%T';
#In between
select * from student_details where sname like '%I%';
# start & ends With
select * from student_details where sname like 'A%T';
#missing letter
select * from student_details where sadd like 'g_a';
select * from student_details where sname like  'A_n_b';
# query with SELECT
select id,sname,sphone,sadd from student_details;
select * from student_details where Id = 5;
select * from student_details where sname = 'BIDISHA';
#distinct
select distinct sname from student_details;

#alter
alter table student_details add Comm_Pct int after fees;
update student_details set Comm_Pct = 20 where id = 1;
update student_details set Comm_Pct = 15 where id = 2;
update student_details set Comm_Pct = 10 where id = 3;
update student_details set Comm_Pct = 15 where id = 4;
update student_details set Comm_Pct = 25 where id = 5;
update student_details set Comm_Pct = 35 where id = 6;
update student_details set Comm_Pct = 20 where id = 7;
update student_details set Comm_Pct = 15 where id = 8;
update student_details set Comm_Pct = 45 where id = 9;

#as
select sname,sadd,fees,fees + 300 as 'Increased_fees' from student_details;
select sname,fees,fees + Comm_Pct + 100 as 'Annual_Compensation_fees' from student_details;
select Comm_Pct from student_details;
update student_details set fees = 3000.50 where id = 2;
update student_details set fees = 3300.50 where id = 3;
update student_details set fees = 5200.50 where id = 5;
update student_details set fees = 2500.50 where id = 7;
update student_details set fees = 4500.50 where id = 1;

# greatr than
select id,  fees from student_details where fees >4000;

#between
select sname, fees from student_details where fees between 2000 and 3000;
select * from student_details where fees =4500.5 or fees=2000.5 or fees=3300.50;
select * from student_details where ID=1 or ID = 5 or ID=3;

#not equal
select * from student_details where fees != 2000.5;
select * from student_details where sname = 'Arnab';
update student_details set id = 11 where fees > 4500.50;
select sname,id from student_details where fees>3300.5 and sadd='chennai';
truncate student_details; # delete rows
drop table student_details; # delete whole table