-- Used during the development of code

--DROP TABLE Titles
--DROP TABLE Employees
--DROP TABLE Departments
--DROP TABLE Salaries
--DROP TABLE Dept_emp
--DROP TABLE Dept_manager


-- The first thing to do is to prepare the employees csv file to format the birth_date and hire_date to date format
-- DMY.

-- 1 Create table Titles (title_id, title)
CREATE TABLE Titles
(	
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR (30),
	PRIMARY KEY (title_id)
);

-- 2 Create table Employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
CREATE TABLE Employees
(	
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (5) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id)
);

-- 3 Create table Departments (dept_no, dept_name)
CREATE TABLE Departments
(	
	dept_no VARCHAR (10) NOT NULL,
	dept_name VARCHAR (50),
	PRIMARY KEY (dept_no)
);

-- 4 Create table Salaries (emp_no, salary)
CREATE TABLE Salaries
(	
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

-- 5 Create table Dept_emp (emp_no, dept_no)
CREATE TABLE Dept_emp
(	
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR (10),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

-- 6 Create table Dept_manager (dept_no, emp_no)
CREATE TABLE Dept_manager
(	
	dept_no VARCHAR (10),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

-- Used during the development of code

--SELECT * FROM titles;
--SELECT * FROM employees;
--SELECT * FROM departments;
--SELECT * FROM salaries;
--SELECT * FROM dept_emp;
--SELECT * FROM dept_manager;



