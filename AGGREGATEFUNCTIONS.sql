use c4119;
create table CUSTOMER(
cust_id varchar(15) primary key,
Fname varchar(15),
Lname varchar(15),
Area char(20),
DOB date);

insert into customer values('A01','Riya','Roy','USA','1986-01-15');
insert into customer values('A02','surya', 'sen','LA','1992-11-17');
insert into customer values('A03','akash', 'singh','Italy','1996-12-25');
insert into customer values('A04','rahul', 'sharma','Goa','1993-05-15');
insert into customer values('A05','mina', 'Roy','Pune','1993-01-10');

alter table customer add phone int after DOB; 
update customer set Phone = 90807106 where cust_id ='A01';
update customer set Phone = 9080706 where cust_id ='A02';
update customer set Phone = 9080707 where cust_id ='A04';
update customer set Phone = 968025 where cust_id ='A03';
update customer set Phone = 977015 where cust_id ='A05';

create table orders(
order_id int primary key,
orderdate date,
quantity int,
price double(5,2));
#customerid int, foreign key (customerid) references customer(cust_id) );
insert into orders values(1,'2023-01-15',4,'280.30');
insert into orders values(2,'2023-12-14',4,'820.02');
insert into orders values(3,'2023-05-02',2,'180.05');
insert into orders values(4,'2023-04-05',3,'230.04');
insert into orders values(5,'2023-01-25',5,'450.00');

#cross join
select * from customer_table cross join order_table;
#self join
select S1.sname,S1.saddr from student_details S1 inner join student_details S2
on S1.saddr = S2.saddr and S1.id<>S2.id order by S1.id;
#Any
select customerid,customername from customer_table 
where customerid > any (select customerid from order_table);
#All
select customerid,customername from customer_table 
where customerid > all (select customerid from order_table);
#not exists
select customername,customerphone from customer_table 
where not exists 
(select * from order_table where customer_table.customerid = ordertable.customerid);
#rollup
select dept,count(emp_id),sum(salary) as 'total_deptsalary' from emp group by dept with rollup;

