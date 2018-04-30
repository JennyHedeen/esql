DELETE FROM tasks;
DELETE FROM employees;
DELETE FROM departments;

INSERT INTO departments (name, phone) VALUES
  ('logistic', '2379658'),
  ('finances', '2379656'),
  ('it', '2379657');

INSERT INTO employees (last_name, first_name, post, dept_id) VALUES
  ('Rees', 'Katerine', 'senior manager', 100),
  ('Sneider', 'Paul', 'north region manager', 100),
  ('Fox', 'Samantha', 'east region manager', 100),
  ('Williams', 'Jessika', 'south region manager', 100),
  ('Tompson', 'Edward', 'west region manager', 100),
  ('Manson', 'Marilyn', 'senior accountant', 101),
  ('Wolf', 'Tomas', 'accountant', 101),
  ('Osbourne', 'Ozzy', 'the god', 102);

INSERT INTO tasks (description, emp_id) VALUES
  ('finish monthly report', 1000),
  ('trip to London', 1001),
  ('trip to Rome', 1003),
  ('prepare monthly report', 1006),
  ('plan for vacation', 1007);