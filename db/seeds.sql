
-- view all departments,
-- view all roles, 
-- view all employees, 
-- add a department, 
-- add a role, 
-- add an employee, and 
-- update an employee role

INSERT INTO department (name) --primary key
VALUES  ("Sales"),
        ("Legal"),
        ("Engineering"),
        ("Finance");

INSERT INTO employee_role (title, salary, department_id) --foreign key
VALUES  ("Sales Lead", 100000, 1),
        ("Salesperson", 80000, 1),
        ("Lead Engineer", 150000, 3),
        ("Software Engineer", 120000, 3),
        ("Account Manager", 160000, 4),
        ("Accountant", 125000, 4),
        ("Legal Team Lead", 250000, 2),
        ("Lawyer", 190000, 2);













INSERT INTO manager_id (first_name, last_name, department_id)
VALUES  ("Ashley", "Rodriquez", 3),
        ("Kunal", "Singh", 4),
        ("Sarah", "Lourd", 2),
        ("John", "Doe", 1)


INSERT INTO employee_id (first_name, last_name, employee_role_id, manager_id)
VALUES  ("John", "Doe", 1, NULL),
        ("Mike", "Chan", 1, 4?),
        ("Ashely", "Rodriquez", 3,),
        ("Kevin", "Tupik", 3,),
        ("Kunal", "Singh", 4,),
        ("Malia", "Brown", 4,),
        ("Sarah", "Lourd", 2,),
        ("Tom", "Allen", 2,),



        INSERT INTO employee_id (first_name, last_name) -- employee_role_id, manager_id)
VALUES  ("John", "Doe"),
        ("Mike", "Chan"),
        ("Ashely", "Rodriquez"),
        ("Kevin", "Tupik"),
        ("Kunal", "Singh"),
        ("Malia", "Brown"),
        ("Sarah", "Lourd"),
        ("Tom", "Allen");

INSERT INTO manager_id (first_name, last_name) -- department_id)
VALUES  ("Ashley", "Rodriquez"),
        ("Kunal", "Singh"),
        ("Sarah", "Lourd"),
        ("John", "Doe");