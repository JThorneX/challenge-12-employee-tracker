-- view all departments,
-- view all roles, 
-- view all employees, 
-- add a department, 
-- add a role, 
-- add an employee, and 
-- update an employee role

DROP DATABASE IF EXISTS employeetracker_db;
CREATE DATABASE employeetracker_db;

USE employeetracker_db;


CREATE TABLE departments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE employee_role (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary INT NOT NULL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) 
  REFERENCES departments(id)
);

CREATE TABLE employees (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id)
    REFERENCES employee_role(id),
    manager_id INT,
    FOREIGN KEY (manager_id)
    REFERENCES employees(id)
);

inquirer
      .prompt({
        type: "list",
        name: "choice",
        message: "Go back?",
        choices: ["Main Menu", "Quit"],
      })
      .then((results) => {
        switch (results.choice) {
          case "Main Menu":
            startProcess();
            break;
          case "Quit":
            break;
        }
      });