CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

INSERT INTO employee (employee_id, employee_name, department_id)
VALUES 
    (1, 'John Doe', 1),
    (2, 'Jane Smith', 2),
    (3, 'Alice Johnson', 1),
    (4, 'Bob Williams', NULL);

	CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO department (department_id, department_name)
VALUES 
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance');

	select * from employee;
	select * from department;

	select e.employee_name,d.department_name from employee e
	right join department d on e.department_id = d.department_id;