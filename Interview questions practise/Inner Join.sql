CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

INSERT INTO students (student_id, student_name, course_id)
VALUES 
    (1, 'John Doe', 101),
    (2, 'Jane Smith', 102),
    (3, 'Alice Johnson', 101);

	CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO courses (course_id, course_name)
VALUES 
    (101, 'Mathematics'),
    (102, 'Physics'),
    (103, 'Chemistry');

	Select * from students;
	Select * from courses;

	select s.student_name , c.course_name from students s
	join courses c on s.course_id = c.course_id;