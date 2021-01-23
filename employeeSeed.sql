INSERT INTO department (name) values ('General Managemnt'), ('HR'), ('Technology'), ('Marketing'), ('Sales'), ('Accounting');

INSERT INTO role (title, salary, department_id) values 
('President', '200000', 1),
('Vice President', '150000', 1),
('Recruiter', '30000', 2),
('HR Generalist', '75000', 2),
('Director of Operations', '110000', 1),
('Software Architect', '165000', 3),
('Software Engineer', '80000', 3),
('UX Designer', '55000', 4),
('SEO', '50000', 4),
('Sales Director', '60000', 5),
('Jr. Sales Consultant', '30000', 5),
('Controller', '65000', 6),
('Bookkeeper', '15000', 6),
('Assistant Controller', '45000', 6);


INSERT INTO employee(first_name, last_name, role_id, manager_id) values 
('John', 'Doe', 1, null), 
('Henry', 'Ford', 2, 1), 
('Marcus', 'Willson', 4, 2), 
('Johnny', 'Depp', 5, 1), 
('Jim', 'Carey', 12, 3), 
('Matt', 'Ryan', 6, 4), 
('Jack', 'Frost', 11, 2)