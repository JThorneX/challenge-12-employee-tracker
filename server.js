const inquirer = require("inquirer");
const fs = require("fs");
const cTable = require("console.table");
const mysql = require("mysql2");

const db = mysql.createConnection(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: "localhost",
    dialect: "mysql",
    port: 3306,
  }
);

function init() {
  startProcess();
}

function startProcess() {
  inquirer
    .prompt([
      {
        type: "list",
        message: "What would you like to do?",
        choices: [
          "View All Employees",
          "Add Employee",
          "Update Employee Role",
          "View All Roles",
          "Add Role",
          "View All Departments",
          "Add Department",
          "Quit",
        ],
        name: "choices",
      },
    ])
    .then((answers) => {
      switch (answers.choices) {
        case "View All Employees":
          viewEmployees();
          break;
        case "Add Employee":
          addEmployee();
          break;
        case "Update Employee Role":
          updateEmployeeRole();
          break;
        case "View All Roles":
          viewAllRoles();
          break;
        case "Add Role":
          addRole();
          break;
        case "View All Departments":
          viewAllDepartments();
          break;
        case "Add Department":
          addDepartment();
          break;
        case "Quit":
          break;
      }
    });
}

function viewEmployees() {
  db.query("SELECT name FROM departments ORDER BY id", function (err, results) {
    if (err) {
      console.log(err);
    }
    console.table(results);
    startProcess();
  });
}

function addEmployee() {
  db.query("SELECT * FROM employees", (err, employees) => {
    const newEmployee = [{ name: "", value: 0 }];

    employees.forEach(({ first_name, last_name, id }) => {
      newEmployee.push({
        name: first_name + last_name,
        value: id,
      });
    });

    db.query("SELECT * FROM employee_role", (err, employee_role) => {
      const newEmployeeRole = [];
      employee_role.forEach(({ title, id }) => {
        newEmployeeRole.push({
          name: title,
          value: id,
        });
      });

      inquirer.prompt([
        {
          type: "input",
          name: "first_name, last_name",
          message: "What is the new employee's name?",
        },
        {
          type: "list",
          name: "employeeRole",
          message: "What is the new employee's role?",
          choices: newEmployeeRole,
        },
      ]);
    }).then((options) => {
      const newEmployee = [options.first_name, options.last_name];
      db.query(
        `INSERT INTO employees (first_name, last_name, employee_id) VALUES (?, ?, ?)`,
        [[options.firstname, options.lastname, options.employeeRole]],
        (err, results) => {
          console.log(
            "Successfully added " +
              newEmployee +
              " to the employee tracker database."
          );
          viewEmployees();
        }
      );
    });
  });
}
function updateEmployeeRole() {}
function viewAllRoles() {}
function addRole() {}
function viewAllDepartments() {}
function addDepartment() {}

init();
