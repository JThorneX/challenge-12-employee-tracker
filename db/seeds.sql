
-- view all departments,
-- view all roles, 
-- view all employees, 
-- add a department, 
-- add a role, 
-- add an employee, and 
-- update an employee role

INSERT INTO departments (name)
VALUES  ("Sales"),
        ("Legal"),
        ("Engineering"),
        ("Finance");
        
INSERT INTO employee_role (title, salary, department_id)
VALUES  ("Sales Lead", 100000, 1),
        ("Salesperson", 80000, 1),
        ("Lead Engineer", 150000, 3),
        ("Software Engineer", 120000, 3),
        ("Account Manager", 160000, 4),
        ("Accountant", 125000, 4),
        ("Legal Team Lead", 250000, 2),
        ("Lawyer", 190000, 2);

INSERT INTO employees (first_name, last_name, employee_id, manager_id)
VALUES  ("John", "Doe", 1, NULL),
        ("Mike", "Chan", 1, 1),
        ("Ashely", "Rodriguez", 3, NULL),
        ("Kevin", "Tupik", 3, 3),
        ("Kunal", "Singh", 4, NULL),
        ("Malia", "Brown", 4, 5),
        ("Sarah", "Lourd", 2, NULL),
        ("Tom", "Allen", 2, 7);