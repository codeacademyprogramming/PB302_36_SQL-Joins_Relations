SELECT * FROM Employees AS E
JOIN Departments AS D 
ON D.Id=E.DepartmentId

SELECT * FROM Employees AS E
LEFT JOIN Departments AS D ON D.Id=E.DepartmentId

SELECT * FROM Employees AS E
RIGHT JOIN Departments AS D ON D.Id=E.DepartmentId

SELECT * FROM Employees AS E
FULL OUTER JOIN Departments AS D ON D.Id=E.DepartmentId

SELECT 
E.Id,
Fullname,
SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)) AS DOMAIN,
Salary,
Name AS DepartmentName,
(SELECT COUNT(*) FROM Employees  WHERE Employees.DepartmentId=D.Id) AS DepEmpCount
FROM Employees AS E
JOIN Departments AS D 
ON D.Id=E.DepartmentId
