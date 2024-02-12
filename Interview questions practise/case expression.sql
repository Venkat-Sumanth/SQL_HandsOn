/*IN Operator*/
select * from users

select * from users
where id in (1,4,7);

/*case expression*/

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);

INSERT INTO student (student_id, student_name, marks)
VALUES 
    (1, 'John', 85),
    (2, 'Alice', 72),
    (3, 'Bob', 60),
    (4, 'Jane', 92),
    (5, 'Smith', 45);

	select * from student;

	select student_id,student_name,marks,
	case 
	when marks >=90 then 'A'
	when marks >=80 then 'B'
	when marks >=70 then 'C'
	when marks >=60 then 'D'
	else 'F'
	end as grade
	from student;