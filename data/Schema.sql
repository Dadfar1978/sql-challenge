CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);
select * from titles
CREATE TABLE employees (
    emp_no INTEGER  NOT NULL,
	emp_title_id VARCHAR   NOT NULL,
	birth_date DATE   NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR  NOT NULL,
    hire_date DATE  NOT NULL,
	PRIMARY KEY (emp_no),
    FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
 
  );
select * from employees


CREATE TABLE departments (
    dept_no VARCHAR(20) NOT NULL,
    dept_name VARCHAR(20) NOT NULL,
	 PRIMARY KEY (dept_no)
);
select * from departments

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(20) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);
select * from dept_emp


CREATE TABLE dept_manager (
    dept_no VARCHAR(20) NOT NULL,
    emp_no INTEGER NOT NULL,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_manager


CREATE TABLE salaries (
    emp_no INTEGER NOT NULL ,
    salary INTEGER NOT NULL,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from salaries




