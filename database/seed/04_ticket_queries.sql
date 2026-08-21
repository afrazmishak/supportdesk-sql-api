-- All tickets with customer, department and assigned agent
SELECT
    t.TicketId,
    t.Subject,
    t.Priority,
    t.Status,
    c.FullName AS CustomerName,
    d.Name AS DepartmentName,
    a.FullName AS AssignedAgent
FROM dbo.Tickets AS t
INNER JOIN dbo.Customers AS c
    ON t.CustomerId = c.CustomerId
INNER JOIN dbo.Departments AS d
    ON t.DepartmentId = d.DepartmentId
LEFT JOIN dbo.Agents AS a
    ON t.AssignedAgentId = a.AgentId;


-- Open tickets
SELECT
    TicketId,
    Subject,
    Priority,
    CreatedAt
FROM dbo.Tickets
WHERE Status = N'Open';


-- High and Critical tickets
SELECT
    TicketId,
    Subject,
    Priority,
    Status
FROM dbo.Tickets
WHERE Priority IN
(
    N'High',
    N'Critical'
);