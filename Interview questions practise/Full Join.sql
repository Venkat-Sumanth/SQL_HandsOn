CREATE TABLE employes (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

INSERT INTO employes (employee_id, employee_name, department_id)
VALUES 
    (1, 'John Doe', 1),
    (2, 'Jane Smith', 2),
    (3, 'Alice Johnson', 1),
    (4, 'Bob Williams', NULL);

	CREATE TABLE departmets (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departmets (department_id, department_name)
VALUES 
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance');

	select * from employes;
	select * from departmets;

	select e.employee_name,d.department_name from employes e
	full join departmets d on e.department_id = d.department_id;
