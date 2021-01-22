const mysql = require("mysql");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "ironman",
  database: "companySQL_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("Testing");
  mainTask();
});

function mainTask() {
  inquirer
    .prompt({
      name: "action",
      type: "rawlist",
      message: "What would you like to do?",
      choices: [
        "View All Employees",
        "View All Employees By Department",
        "View All Employees By Manager",
        "Add Employee",
        "Update Employee Role",
        "Exit"
      ]
    })
    .then(function(answer) {
      switch (answer.action) {
      case "View All Employees":
        ();
        break;

      case "View All Employees By Department":
        ();
        break;

      case "View All Employees By Manager":
        ();
        break;

      case  "Add Employee":
        ();
        break;

      case "Update Employee Role":
        ();
        break;
        case "Exit":
            exit();
        break;
      }
    });
}

function exit(){
    connection.end();
  }