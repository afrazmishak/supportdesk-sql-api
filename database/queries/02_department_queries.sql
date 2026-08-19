-- View all departments
SELECT
    DepartmentId,
    Name,
    Description,
    IsActive,
    CreatedAt
FROM dbo.Departments;


-- View only active departments
SELECT
    DepartmentId,
    Name
FROM dbo.Departments
WHERE IsActive = 1;


-- Find a specific department
SELECT
    DepartmentId,
    Name,
    Description
FROM dbo.Departments
WHERE Name = N'Technical Support';