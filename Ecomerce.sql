create database ecomerce;
use ecomerce;
CREATE TABLE Employees (EmployeeID INT PRIMARY KEY,EmployeeName VARCHAR(50),DepartmentID INT);
select * from employees;
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(50));
select * from Departments;
CREATE TABLE Projects (ProjectID INT PRIMARY KEY,ProjectName VARCHAR(50),DepartmentID INT);
select * from Projects;
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID) VALUES
(1, 'Raju', 1),
(2, 'Vamsi', 2),
(3, 'Mark', 1),
(4, 'vijay', 3),
(5, 'Kareem', 5);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT'),
(4, 'Marketing'),
(5, NULL);

INSERT INTO Projects (ProjectID, ProjectName, DepartmentID) VALUES
(101, 'Project A', 1),
(102, 'Project B', 2),
(103, 'Project C', 3),
(104, 'Project D', 4),
(105, 'Project E', NULL);

-- first q's
SELECT e.EmployeeName, d.DepartmentName FROM Employees e JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 2nd Q'S
SELECT e.EmployeeName, d.DepartmentName FROM Employees e LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 3rd Q's\
SELECT d.DepartmentName, e.EmployeeName FROM Departments d LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID;

-- 4Th Q'S 
SELECT e.EmployeeName, p.ProjectName FROM Employees e CROSS JOIN Projects p;
-- 5th Q's
SELECT e.EmployeeName FROM Employees e JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.DepartmentID > (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'HR');

-- 6th Q's
SELECT p.ProjectName, d.DepartmentName FROM Projects p LEFT JOIN Departments d ON p.DepartmentID = d.DepartmentID;

-- 7th Q's
SELECT EmployeeName FROM Employees WHERE DepartmentID IS NULL;

-- 8th Qs 
SELECT d.DepartmentName FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID WHERE e.EmployeeID IS NULL;

-- 9th Q's
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS NumberOfEmployees FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID GROUP BY d.DepartmentName;

