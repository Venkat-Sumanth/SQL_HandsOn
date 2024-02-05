use suma;

select * from employee;

select emp_name,salary,manager_id,
coalesce(emp_id,salary,manager_id) as output from employee;

/*coalesce function is used to handle the null values
It will display the first non null values*/
