use suma;

select * from employee;

/*Row Number function*/
select emp_name,salary,manager_id ,
ROW_NUMBER() over(order by salary desc) as sumanth
from employee;

/*Rank function*/
select emp_id,department_id,salary,
rank() over(order by salary) as ranking
from employee;

/*Dense Rank*/
select emp_name,salary,department_id,manager_id,
DENSE_RANK() over(order by salary) as ranking
from employee;
