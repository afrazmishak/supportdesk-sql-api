/*
Expected to fail:
CustomerId 999 violates FK_Tickets_Customers.

INSERT INTO dbo.Tickets
(
    CustomerId,
    DepartmentId,
    Subject,
    Description
)
VALUES
(
    999,
    1,
    N'Invalid ticket',
    N'Foreign-key test.'
);
*/

