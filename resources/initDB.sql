DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments
(
  id     INTEGER   NOT NULL PRIMARY KEY,
  name   CHAR (30) NOT NULL,
  phone  CHAR (15)
);

CREATE TABLE employees
(
  id          INTEGER NOT NULL PRIMARY KEY,
  last_name   VARCHAR (20) NOT NULL,
  first_name  VARCHAR (10) NOT NULL,
  post        VARCHAR (20),
  dept_id     INTEGER,
  FOREIGN KEY (dept_id) REFERENCES departments (id) ON DELETE CASCADE
);

CREATE TABLE tasks
(
  id          INTEGER NOT NULL PRIMARY KEY,
  description VARCHAR (50) NOT NULL,
  emp_id      INTEGER,
  FOREIGN KEY (emp_id) REFERENCES employees (id) ON DELETE CASCADE
);