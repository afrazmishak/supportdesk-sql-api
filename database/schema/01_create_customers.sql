CREATE TABLE dbo.Customers
(
    CustomerId INT IDENTITY(1,1) NOT NULL,
    FullName NVARCHAR(150) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    Phone NVARCHAR(30) NULL,
    CompanyName NVARCHAR(150) NULL,

    IsActive BIT NOT NULL
        CONSTRAINT DF_Customers_IsActive
        DEFAULT (1),

    CreatedAt DATETIME2(0) NOT NULL
        CONSTRAINT DF_Customers_CreatedAt
        DEFAULT (SYSUTCDATETIME()),

    UpdatedAt DATETIME2(0) NULL,

    CONSTRAINT PK_Customers
        PRIMARY KEY (CustomerId),

    CONSTRAINT UQ_Customers_Email
        UNIQUE (Email)
);