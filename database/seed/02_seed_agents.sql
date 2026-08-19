/*
Expected to fail because DepartmentId 999 does not exist.

INSERT INTO dbo.Agents
(
    FullName,
    Email,
    DepartmentId
)
VALUES
(
    N'Invalid Agent',
    N'invalid.agent@supportdesk.test',
    999
);
*/

-- Agents with department names
SELECT
    a.AgentId,
    a.FullName,
    a.Email,
    d.Name AS DepartmentName
FROM dbo.Agents AS a
INNER JOIN dbo.Departments AS d
    ON a.DepartmentId = d.DepartmentId;


-- Technical Support agents
SELECT
    a.AgentId,
    a.FullName,
    d.Name AS DepartmentName
FROM dbo.Agents AS a
INNER JOIN dbo.Departments AS d
    ON a.DepartmentId = d.DepartmentId
WHERE d.Name = N'Technical Support';


-- Agent count by department
SELECT
    d.Name AS DepartmentName,
    COUNT(a.AgentId) AS AgentCount
FROM dbo.Departments AS d
LEFT JOIN dbo.Agents AS a
    ON d.DepartmentId = a.DepartmentId
GROUP BY
    d.DepartmentId,
    d.Name;