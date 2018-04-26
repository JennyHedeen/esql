DELETE FROM tasks;
DELETE FROM employees;
DELETE FROM departments;

INSERT INTO departments (id, name, phone) VALUES
  (101, 'logistic', '2379658'),
  (102, 'finances', '2379656'),
  (103, 'it', '2379657');

INSERT INTO employees (id, last_name, first_name, post, dept_id) VALUES
  (1001, 'Rees', 'Katerine', 'senior manager', 101),
  (1002, 'Sneider', 'Paul', 'north region manager', 101),
  (1003, 'Fox', 'Samantha', 'east region manager', 101),
  (1004, 'Williams', 'Jessika', 'south region manager', 101),
  (1005, 'Tompson', 'Edward', 'west region manager', 101),
  (1006, 'Manson', 'Marilyn', 'senior accountant', 102),
  (1007, 'Wolf', 'Tomas', 'accountant', 102),
  (1008, 'Osbourne', 'Ozzy', 'the god', 103);

INSERT INTO tasks (id, description, emp_id) VALUES
  (10001, 'finish monthly report', 1001),
  (10002, 'trip to London', 1002),
  (10003, 'trip to Rome', 1004),
  (10004, 'prepare monthly report', 1007),
  (10005, 'plan for vacation', 1008);