-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, 
		e.last_name, 
		e.first_name, 
		e.sex, 
		s.salary
FROM employees AS e
LEFT JOIN salaries AS s 
ON e.emp_no=s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '%1986'

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
LEFT JOIN departments as d ON dm.dept_no = d.dept_no
LEFT JOIN employees as e ON dm.emp_no = e.emp_no;
