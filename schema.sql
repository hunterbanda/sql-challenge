CREATE TABLE titles(
	title_id VARCHAR (25) NOT NULL, 
	title VARCHAR (25) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (25) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (25) NOT NULL,
	last_name VARCHAR (25) NOT NULL,
	sex VARCHAR (25) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments(
	dept_no VARCHAR (25) NOT NULL,
	dept_name VARCHAR (25) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager(
	emp_no INT NOT NULL,
	dept_no VARCHAR (25) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (25) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)	
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)	
);
