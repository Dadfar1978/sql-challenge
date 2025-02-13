# sql-challenge
This project analyzes historical employee data from Pewlett Hackard spanning the 1980s and 1990s. The analysis involves data modeling, engineering, and detailed SQL analysis of six CSV files containing employee information.

# SQL Challenge: Employee Database Analysis

## Overview

This project analyzes historical employee data from Pewlett Hackard spanning the 1980s and 1990s. The analysis involves data modeling, engineering, and detailed SQL analysis of six CSV files containing employee information.

## Table of Contents

- [Project Description](#project-description)
- [Database Design](#database-design)
- [Files](#files)
- [Installation](#installation)
- [Usage](#usage)
- [Analysis](#analysis)
- [Technologies Used](#technologies-used)

## Project Description

This research project focuses on analyzing employee data using SQL databases. The project includes:

- Creating an Entity Relationship Diagram (ERD)
- Designing and implementing table schemas
- Writing SQL queries for data analysis
- Documenting findings and database structure

## Database Design

### Table Structure

#### `titles`
```sql
title_id VARCHAR PK
title VARCHAR
```
#### `employees`
```sql
emp_no INT PK
emp_title_id VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE
```

#### `departments`
```sql
dept_no VARCHAR PK
dept_name VARCHAR
```

#### `dept_manager`
```sql
emp_no INT PK FK >- employees.emp_no
dept_no VARCHAR PK FK >- departments.dept_no
```

#### `dept_emp`
```sql
emp_no INT PK FK >- employees.emp_no
dept_no VARCHAR PK FK >- departments.dept_no
```

#### `salaries`
```sql
emp_no INT PK FK >- employees.emp_no
salary INT
```
## Files

- **`table_schema.sql`**: SQL code for table creation
- **`queries.sql`**: Analysis queries
- **`ERD.png`**: Entity Relationship Diagram
- **`/data/`**: Directory containing CSV files
  - `titles.csv`
  - `employees.csv`
  - `departments.csv`
  - `dept_emp.csv`
  - `dept_manager.csv`
  - `salaries.csv`

## Installation

1. Create a new PostgreSQL database
2. Execute table creation script:
   ```bash
   psql -d your_database -f table_schema.sql
   ```
3. Import CSV files in the following order:
   - titles.csv
   - employees.csv
   - departments.csv
   - dept_emp.csv
   - dept_manager.csv
   - salaries.csv

## Usage

1. Open pgAdmin or your preferred SQL client
2. Connect to your database
3. Run analysis queries from `queries.sql`

## Analysis

The SQL queries perform the following analyses:

1. **Employee Details**
   - Employee numbers
   - Names
   - Salaries
   - Gender
2. **Temporal Analysis**
   - 1986 hire date analysis
   - Department management history

3. **Department Analysis**
   - Employee department assignments
   - Management structure
   - Sales and Development department focus

4. **Name Analysis**
   - Last name frequency distribution
   - Specific name searches (e.g., "Hercules B%")

## Technologies Used

- **Database**: PostgreSQL
- **ERD Design**: QuickDBD
- **Interface**: pgAdmin 4
- **Version Control**: Git/GitHub

## Contributors

[Delaram]
- Email
- GitHub

## License

This project is available for educational purposes. Data generated by Mockaroo, LLC (2022).

---
**Note**: This README is part of a data analysis bootcamp assignment and demonstrates SQL database design and analysis skills.
