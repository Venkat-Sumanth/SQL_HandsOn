use suma;

select * from employee;

select e.emp_id,e.emp_name,e.salary,m.emp_name as 'manager name',m.salary as 'manager salary' from employee e
inner join employee m on e.manager_id = m.emp_id;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

INSERT INTO employees VALUES (1, 'Alice', NULL);
INSERT INTO employees VALUES (2, 'Bob', 1);
INSERT INTO employees VALUES (3, 'Charlie', 1);
INSERT INTO employees VALUES (4, 'David', 2);
INSERT INTO employees VALUES (5, 'Eva', 2);

select * from employees;

SELECT e.employee_name AS employee_name,
       m.employee_name AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

create view [dept_id > 100] as
select emp_name,department_id,salary from employee
where department_id > 100;

select * from [dept_id > 100];

create procedure ruman as
select * from address;

exec ruman;

create procedure sumantha as
select * from employee;
execute sumantha;

create procedure tuthvik @department_id int as
select department_id,salary from employee where department_id = @department_id;

execute tuthvik @department_id = 200;

create procedure rithvik 
@emp_name varchar(100),
@manager_id int,
@salary int as
select emp_id,emp_name from employee where emp_name = @emp_name and manager_id = @manager_id and salary = @salary;

execute rithvik @emp_name = ankit, @manager_id = 4, @salary = 10000;

select * from employee;

select emp_name,department_id,avg(salary) as salary from employee
group by department_id;

select * from employee
where emp_name = 'ankit';

select emp_name as e_name, department_id as id from employee;

Create database joins;