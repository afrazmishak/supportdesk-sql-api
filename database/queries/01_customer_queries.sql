-- Verify current database
SELECT DB_NAME() AS CurrentDatabase;


-- View all customers
SELECT *
FROM dbo.Customers;


-- Insert sample customer
INSERT INTO dbo.Customers
(
    FullName,
    Email,
    Phone,
    CompanyName
)
VALUES
(
    N'John Carter',
    N'john.carter@example.com',
    N'+971 50 123 4567',
    N'Carter Technologies'
);