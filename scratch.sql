-- A
--1
SELECT Courses.name AS course_name, Lecturers.name AS lecturer_name
FROM Courses
INNER JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;
--2
SELECT Courses.name AS course_name, Lecturers.name AS lecturer_name
FROM Courses
LEFT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id;
--3
SELECT Lecturers.name AS lecturer_name, Courses.name AS course_name
FROM Lecturers
LEFT JOIN Courses
ON Lecturers.lecturer_id = Courses.lecturer_id;
--4
SELECT Courses.name AS course_name, Lecturers.name AS lecturer_name
FROM Courses
LEFT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;
--5
SELECT Courses.name AS course_name, Lecturers.name AS lecturer_name
FROM Courses
RIGHT JOIN Lecturers
ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;

--B
--15
SELECT Employees.name AS employee_name, Departments.name AS department_name
FROM Employees
INNER JOIN Departments
ON Employees.department_id = Departments.department_id;
--16
SELECT Employees.name AS employee_name, Departments.name AS department_name
FROM Employees
LEFT JOIN Departments
ON Employees.department_id = Departments.department_id;
--17
SELECT Employees.name AS employee_name
FROM Employees
LEFT JOIN Departments
ON Employees.department_id = Departments.department_id
WHERE Employees.department_id IS NULL;
--18
SELECT COUNT(*) AS total_employees
FROM Employees;
--20
SELECT Departments.name AS department_name, Employees.name AS employee_name, Employees.salary AS max_salary
FROM Employees
LEFT JOIN Departments
ON Employees.department_id = Departments.department_id
WHERE (Employees.department_id, Employees.salary) IN (
    SELECT department_id, MAX(salary)
    FROM Employees
    GROUP BY department_id)
;