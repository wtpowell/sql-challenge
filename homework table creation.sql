DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id) 
	);

select * from titles


DROP TABLE employees

create table employees (
	emp_no INT NOT NULL,
	title_id VARCHAR(10) NOT NULL,
	birthdate DATE NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(5),
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
	);

select * from employees

DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
	);

select * from departments

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

select * from dept_emp

DROP TABLE dept_manager

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

select * from dept_manager


DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	
select * from salaries



	