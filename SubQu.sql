create database subqu;
use subqu;
CREATE TABLE Employees (EmployeeID INT PRIMARY KEY, EmployeeName VARCHAR(50),DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
select * from Employees;
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(50)
);
select * from departments;
CREATE TABLE Projects (ProjectID INT PRIMARY KEY,ProjectName VARCHAR(50),DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
select*from Projects;
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID) VALUES
(1, 'John', 1),(2, 'Jane', 2),(3, 'Mark', 1),(4, 'Emily', 3);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),(2, 'HR'),(3, 'IT'),(4, 'Marketing');

INSERT INTO Projects (ProjectID, ProjectName, DepartmentID) VALUES
(101, 'Project A', 1),(102, 'Project B', 2),(103, 'Project C', 3),(104, 'Project D', 4),(105, 'Project E', NULL);

 -- 1 Q's
SELECT e2.EmployeeName FROM Employees e1 JOIN Employees e2 ON e1.DepartmentID = e2.DepartmentID
WHERE e1.EmployeeName = 'John' AND e2.EmployeeName != 'John';

 -- 2 Q's
SELECT DepartmentName FROM Departments d JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName HAVING COUNT(e.EmployeeID) > 1;

-- 3 Q's
SELECT ProjectName FROM Projects WHERE DepartmentID IS NULL;

-- 4 Q's
SELECT DepartmentName FROM Departments d JOIN Employees e ON d.DepartmentID = e.DepartmentID GROUP BY d.DepartmentName
ORDER BY COUNT(e.EmployeeID) DESC LIMIT 1;

-- 5 Q's
SELECT e.EmployeeName FROM Employees e JOIN Projects p ON e.DepartmentID = p.DepartmentID
JOIN Departments d ON p.DepartmentID = d.DepartmentID WHERE d.DepartmentName = 'Sales';

-- 6 Q's
SELECT DepartmentName FROM Departments d LEFT JOIN Projects p ON d.DepartmentID = p.DepartmentID WHERE p.ProjectID IS NULL;

-- 7 Q's
SELECT EmployeeName FROM Employees e LEFT JOIN Projects p ON e.DepartmentID = p.DepartmentID WHERE p.ProjectID IS NULL;

-- 8 Q's
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS NumberOfEmployees FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID GROUP BY d.DepartmentName HAVING COUNT(e.EmployeeID) > 2;

-- 9 Q's
SELECT p.ProjectName FROM Projects p JOIN Employees e ON p.DepartmentID = e.DepartmentID
JOIN Departments d ON e.DepartmentID = d.DepartmentID WHERE d.DepartmentName = 'IT';

-- 10 Q's
SELECT EmployeeName FROM Employees e JOIN Departments d ON e.DepartmentID = d.DepartmentID WHERE d.DepartmentName != 'Marketing';
