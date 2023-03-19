-- view all departments,
-- view all roles, 
-- view all employees, 
-- add a department, 
-- add a role, 
-- add an employee, and 
-- update an employee role

DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;


CREATE TABLE department (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee_role (
  title VARCHAR(30) NOT NULL,
  salary INT,
  FOREIGN KEY (department_id) 
  REFERENCES department(id)
  ON DELETE SET NULL
);



CREATE TABLE manager_id (
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(30) NOT NULL
   -- FOREIGN KEY (department_id) 
   -- REFERENCES department(id)
);

CREATE TABLE employee_id (
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(30) NOT NULL
   -- employee_role_id INT NOT NULL,
    -- manager_id INT
);








CREATE TABLE manager_id (
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    FOREIGN KEY (department_id) 
    REFERENCES department(id)
);

CREATE TABLE employee_id (
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    employee_role_id INT NOT NULL,
    manager_id INT
);

  FOREIGN KEY (instructor_id)
  //this tells the foreign key where to reference its value
  REFERENCES instructors(id)
  ON DELETE SET NULL


  department_id TEXT,