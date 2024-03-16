use suma;

select * from employee;

/*Find the second highest salary*/
select  max(salary) as 'second highest salary' from employee
where salary not in (select max(salary) from employee);
               /*or*/
select max(salary) as second_highest_salary from employee
where salary<(select max(salary) from employee);

/*Display highest payed employee in each department*/
select max(salary) as highest_salary,department_id from employee
group by department_id;

/*Find Number of employees in each department*/
select department_id,count(emp_id) 'no.of employees' from employee
group by department_id;

/*Display alternate records*/
with rankedemp as(
select emp_name,salary,department_id,
row_number() over (order by salary desc) as RN from employee)
select * from rankedemp
where RN%2  = 0;

/*Display Nth row*/
with rankedemployee as(
select employee.*,
ROW_NUMBER() over (order by salary desc) as rn from employee)
select * from rankedemployee 
where rn in (4,6,8);

select * from employee;

/*Display 1st row and last row*/
with rankedem as(
select employee.*,
row_number() over (order by salary desc) as rk from employee)
select emp_name,salary from rankedem
where rk =1 
union all
select emp_name,salary from rankedem
where rk=(select max(rk) from rankedem);
            /*OR*/
with rankedem as(
select emp_name,salary,
row_number() over (order by salary desc) as rk from employee)
select * from rankedem
where rk =1 or rk=(select max(rk) from rankedem);
           /*OR*/
with rankedem as(
select emp_name,salary,
row_number() over (order by salary desc) as rk from employee)
select  * from rankedem
where rk =1 or rk=(select count(*) from rankedem);

/*Display last two rows of a table*/
with rankedemp as(
select employee.*,
row_number() over (order by salary desc) as rn from employee)
select * from rankedemp
where rn>(select count(*)-2 from rankedemp);

/*Display 1st row and last two rows of a table*/
with rankedemp as(
select employee.*,
row_number() over (order by salary desc) as rn from employee)
select * from rankedemp
where  rn=1 or rn>(select count(*)-2 from rankedemp) ;

/*Display Nth highest salary*/
select distinct(salary) from employee
order by salary desc;
|
SELECT salary
FROM (
    SELECT salary, ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
    FROM (
        SELECT DISTINCT(salary)
        FROM employee
    ) as unique_salaries
) as ranked_salaries
WHERE row_num <= 3
except
SELECT salary
FROM (
    SELECT salary, ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
    FROM (
        SELECT DISTINCT(salary)
        FROM employee
    ) as unique_salaries
) as ranked_salaries
WHERE row_num <= 2;

/*Display duplicate of a column*/
select salary,count(*) as total_duplicates from employee
group by salary
order by count(*) desc; 

/*Display the employee names whose name start with m*/
select * from employee
where emp_name like'm%';

/*Display the employee names whose name ends with m*/
select emp_name from employee
where emp_name like '%m';

/*Display the names of all employees having 'm' in any position of their name*/
select emp_name from employee
where emp_name like '%m%';

/*Display the names of all employees whose name doesnot contain 'm' anywhere*/
select emp_name from employee
where emp_name not like '%m%';

/*Display names of all employees whose name contains exactly 4 letters*/
select emp_name from employee
where emp_name like '____';

/*Display the names of employees whose name contains
(i)second letter as 'O'  (ii)Fourth letter as 'M' */
(i)select emp_name from employee
where emp_name like '_o%';

(ii)select emp_name from employee
where emp_name like '___m%';

/*Display the employee names and hire dates for employees joined in the month of december*/
select emp_name,hiredate from employee
where hiredate like '%dec%';

/*Display the names of the employees whose name contains exactly 2 'M' s*/
select emp_name from employee
where emp_name like '%mm%';

/*Display the names of the employees whose names starts with 'M' and ends with 'T'*/
select emp_name from employee
where emp_name like 'm%t';



select *,ROW_NUMBER() over (order by salary desc) as rn from employee;
select * from employee
