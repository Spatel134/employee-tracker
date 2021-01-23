DROP DATABASE IF EXISTS companySQL_db;
CREATE DATABASE companySQL_db;
USE companySQL_db;

CREATE TABLE department(
  id INTEGER AUTO_INCREMENT NOT NULL,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role(
  id INTEGER AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL,
  department_id INTEGER NOT NULL,
  PRIMARY KEY (id),
  FOREIGN Key (department_id) REFERENCES department(id)
);

CREATE TABLE employee(
  id INTEGER AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER NOT NULL,
  PRIMARY KEY (id),
  FOREIGN Key (role_id) REFERENCES role(id),
  FOREIGN Key (manager_id) REFERENCES employee(id)
);



INSERT INTO department (name) values ('General Managemnt'), ('HR'), ('Operation'), ('Marketing'), ('Sales'), ('Accounting');

INSERT INTO role (title, salary, department_id) values ('CEO', '200000', 1);

INSERT INTO employee(first_name, last_name, role_id) values ('Sahil', 'Patel', 1);