-- Data Analysis
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_no,
e.emp_no,
e.last_name,
e.first_name,
n.dept_name
FROM "Department" AS d
RIGHT JOIN "Employees" AS e
ON d.emp_no = e.emp_no
LEFT JOIN "DepartmentName" AS n
ON d.dept_no = n.dept_no;