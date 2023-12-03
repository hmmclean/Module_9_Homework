-- Data Analysis
-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT n.dept_no,
n.dept_name,
m.emp_no,
e.last_name,
e.first_name
FROM "Manager" AS m
LEFT JOIN "DepartmentName" AS n
ON m.dept_no = n.dept_no
LEFT JOIN "Employees" AS e
ON m.emp_no = e.emp_no;
