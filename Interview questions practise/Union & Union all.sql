-- Example tables
CREATE TABLE employees1 (
    employee_id INT,
    employee_name VARCHAR(50)
);

CREATE TABLE employees2 (
    employee_id INT,
    employee_name VARCHAR(50)
);

-- Sample data
INSERT INTO employees1 VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie');
INSERT INTO employees2 VALUES (3, 'Charlie'), (4, 'David'), (5, 'Eva');

select * from employees1;
select * from employees2;

-- Using UNION to combine and remove duplicates
SELECT * FROM employees1
UNION 
SELECT * FROM employees2;

SELECT EMPLOYEE_ID,EMPLOYEE_NAME FROM EMPLOYEES1
WHERE EMPLOYEE_ID = 3
UNION ALL
SELECT EMPLOYEE_ID,EMPLOYEE_NAME FROM EMPLOYEES2
WHERE EMPLOYEE_ID = 3;
