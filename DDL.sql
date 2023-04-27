# DDL- Data Definition Language(CREATE , DROP, RENAME, TRUNCATE, ALTER)
use c4119;
# create tabel and add columns
create table 4119Student(id int, name varchar(20), age int);
#insert values in the table
insert into 4119Student values(1,'pinki',22);
insert into 4119Student values(2,'pooja',23);
insert into 4119Student values(3,'sapna',21);
insert into 4119Student values(4,'preeti',25);
insert into 4119Student values(5,'priyanka',20);
#create another table
create table JavaStudent(id int, name varchar(20), fees int);
# insert values
insert into JavaStudent values(1,'pinki',1500);
insert into JavaStudent values(2,'upasna',2000);
# drop command is used to delete the table
drop table JavaStudent;
#alter command is used to add columns, change data type , drop column , modify column etc
alter table 4119Student add gmail varchar(20);
alter table 4119Student drop age;
alter table 4119Student modify name varchar(30);
# create a new table
create table JavaStudent(id int primary key auto_increment, sname varchar(20) not null, 
sphone bigint(11) not null unique ,semail varchar(30) not null unique, sadd varchar(30),squalification varchar(10) not null);
#insert values
insert into JavaStudent values(1,'pinki',8955419379,'pinki@gmail.com','bhiwadi','mca');
# add new column
alter table JavaStudent add age int after sname;
# modify datatype size
alter table JavaStudent modify squalification varchar(20) not null;
# modify constraint
alter table JavaStudent modify sphone int not null;
#drop column
alter table JavaStudent drop column age;
#change column name
alter table JavaStudent change column age sage int;
#change table name
alter table JavaStudent rename to student_details;
#insert single row
insert into student_details values(2,'sapna',23,8955897379,'sapna@gmail.com','haryana','mca');
# truncate delete the structure of the table not the table
truncate table student_details;
# delete the table
drop table student_details;

#DML- Data Manipulation Language(insert, update, delete)

create table JavaStudent(id int primary key, sname varchar(20) not null,
                         sphone bigint(11) not null unique,semail varchar(30) not null unique, 
                         sadd varchar(25),squalification varchar(10) not null, sdept varchar(10));
# insert values
insert into javastudent values(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT');
insert into javastudent values(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT');
insert into javastudent values(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL');
insert into javastudent values(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT');
insert into javastudent values(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL');
insert into javastudent values(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL');
alter table JavaStudent rename to student_details;
#use update command
update student_details set sadd = 'rampur' where id = 1;
# add new column and insert their values using update
alter table student_details add sage int after squalification;
update student_details set sage = 20 where id = 1;
update student_details set sage = 21 where id = 2;
update student_details set sage = 22 where id = 3;
update student_details set sage = 23 where id = 4;
update student_details set sage = 24 where id = 5;
update student_details set sage = 25 where id = 6;
select * from student_details;

#use delete command delete any specific row
delete from student_details where id = 3;
# delete any specific column
alter table student_details drop column sage;

# select command
select * from student_details where sname='puja';
# and(both conditions should true)
select * from student_details where sname='puja' and sdept = 'it';
# or (any onecondition should true)
select * from student_details where sname='puja' or sadd = 'pune';
# not
select * from student_details where squalification != 'be';
# in
select * from student_details where sadd in('rampur','goa');
# like operator (starts with)
select * from student_details where sname like 'r%';
# ends with
select * from student_details where sname like '%y';
# in between
select * from student_details where sname like '%n%';
# start & ends with
select * from student_details where sname like 'd%a';
# missing letter
select * from student_details where sadd like 'd_b';
select * from student_details where sname like 'a_n_b';

# query with select
select id, sname,sadd from student_details;
select * from student_details;
select * from student_details where id = 5;

# distinct
select distinct sname  from student_details;

create table future_emp( emp_id int primary key,
                         sname varchar(15) not null,
                         designation varchar(25) not null,
                         dept varchar(10),
                         working_hour varchar(10),
                         salary double(10,2));
                         
                         




























