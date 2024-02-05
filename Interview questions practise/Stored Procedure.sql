use SUMA;

select * from employee;

/*stored procedure without parameters*/
create procedure allrecords as
select * from employee;

execute allrecords;

create procedure suman as
select * from address;

execute suman

/*stored procedure with single parameters*/
create procedure sam1  @salary int 
as
select * from employee where salary = @salary;

exec sam1 @salary = 5000;

/*stored procedure with multiple parameters*/
create procedure sam12 
@salary int,
@emp_id int
as
select emp_id,salary from employee where salary=@salary and emp_id= @emp_id;

exec sam12 @salary = 12000, @emp_id = 5;



-- Drop existing procedure if needed
IF OBJECT_ID('sam2', 'P') IS NOT NULL
    DROP PROCEDURE sam11;
