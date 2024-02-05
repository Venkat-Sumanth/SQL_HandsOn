create table sumanth(
name nvarchar (200) not null,
last_name nvarchar(200) null,
mailid nvarchar(200) not null primary key);

drop table sumanth;

select * from sumanth;

Insert into sumanth(name,last_name,mailid)
values('hema','sankeeth','rank.com'),
('dheeraj', 'kiran', 'riko.com')

create table address(
address nvarchar(200) null,
department nvarchar(200),
mail nvarchar(200) foreign key references sumanth(mailid));

insert into address(address,department,mail)
values ('bobbili','IT','riko.com');

drop table address;

select * from address;

create table employee(
emp_id int,
emp_name nvarchar(200),
department_id int,
salary int,
manager_id int);

insert into employee(emp_id,emp_name,department_id,salary,manager_id) 
values
(1,'ankit',100,10000,4),
(2,'mohit',100,15000,5),
(3,'vikas',100,10000,4),
(4,'rohit',100,5000,2),
(5,'mudit',200,12000,6),
(6,'agam',200,12000,2),
(7,'sanjay',200,9000,2),
(8,'ashish',200,5000,2);

select * from employee;

/*self join or Recursive join*/
select e.emp_id,e.emp_name,e.salary,m.salary as manager_salary,m.emp_name as manager_name from employee e
inner join employee m on e.manager_id = m.emp_id;

/*sub query*/
select e.emp_name,e.salary from employee e
where salary = (select max(salary) from employee);

select emp_name,department_id,salary from employee
where salary < (select avg(salary) from employee);

/*view*/
create view [salary 5000] as
select emp_name,salary,department_id from employee
where salary = 5000;

select * from [salary 5000];

create view [dept_id > 100] as
select emp_name,department_id,salary from employee
where department_id > 100;

select * from [dept_id > 100];

drop view [dept_id > 100];

drop view [salary 5000];

select * from [salary 5000]