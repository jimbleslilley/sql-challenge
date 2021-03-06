DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

CREATE TABLE "employees" (
    "emp_no" INT PRIMARY KEY   NOT NULL,
    "emp_title_id" VARCHAR(20)   NOT NULL,
    "birth_date" VARCHAR(20)   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex" VARCHAR(20)   NOT NULL,
    "hire_date" VARCHAR(20)   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" INT PRIMARY KEY   NOT NULL,
    "salary" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(20) PRIMARY KEY   NOT NULL,
    "title" VARCHAR(20)   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(20)   NOT NULL,
    "emp_no" INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(20) PRIMARY KEY   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL
);
