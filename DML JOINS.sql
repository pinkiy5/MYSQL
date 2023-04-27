use c4119;
create table Future_Emp(
emp_id int primary key,
ename varchar(20) not null,
designation varchar(25) not null,
dept varchar(20),
working_hour varchar(10),
salary double(10,2)
);
INSERT INTO Future_Emp VALUES
(1,'HEMANT','ENGINEER','EE','8','10000'),
(2,'RITU','SME','BCA','6','11000'),
(3,'RAHUL','MGR','CSE','10','12000'),
(4,'SANA','ADMIN','MSC','12','13000'),
(5,'ARYAN','ENGINEER','EE','8','14000'),
(6,'MUKUL','ADMIN','ME','8','15000'),
(7,'UPASANA','ENGINEER','EE','8','16000'),
(8,'PRINCE','MGR','ME','8','17000'),
(9,'TUSHAR','ENGINEER','CE','8','18000'),
(10,'MEGHA','SME','BCA','6','19000'); 


#aggregate function - -- group By
#count
select dept,count(dept) as 'total_emp_in_dept' from Future_Emp group by dept;
#sum
select dept,sum(working_hour) as 'total_hours' from Future_Emp group by dept;
select dept,sum(working_hour) as 'total_hours' from Future_Emp where dept = 'ME';
select dept,sum(salary) as 'total_dept_salary' from Future_Emp group by dept;
select dept,sum(salary) as 'total_dept_salary' from Future_Emp WHERE dept='EE';
#average
select dept,avg(salary) as 'avg_dept_salary' from Future_Emp group by dept;
#min
select dept,min(salary) as 'MIN_dept_salary' from Future_Emp group by dept;
select min(salary) from Future_Emp where dept='EE';
select ename,min(salary) from Future_Emp;
select min(salary) from Future_Emp;
#max
select dept,max(salary) as 'MAX_dept_salary' from Future_Emp group by dept;
select max(salary) from Future_Emp where dept='EE';
select max(salary) from Future_Emp;
#subquery
select ename,dept,salary from Future_Emp where salary=(select max(salary) from Future_Emp);
select * from Future_Emp where salary=(select min(salary) from Future_Emp);
#subquery
select * from emp where emp_id in (select emp_id from emp where working_hour>10);
select * from emp where emp_id in (select emp_id from emp where salary > 1200);
select * from emp where salary = (select max(salary) from emp);
select * from emp where addr not in (select addr from emp where addr = 'mumbai');
select * from emp where dept !=(select dept from emp where dept = 'operation');
select * from emp where salary >(select salary from emp where ename = 'john');

#having
select dept,sum(working_hour) as 'total hours' from Future_Emp group by dept having sum(working_hour)>15;

#orderby name ---- ascending order
select * from Future_Emp order by ename asc;
#orderby designation
select * from Future_Emp order by designation;
# order by salary descending order
select * from Future_Emp order by salary desc;
# order by salary ( by default ascending )
select * from Future_Emp order by salary;












