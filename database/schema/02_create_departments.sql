CREATE TABLE dbo.Departments
(
	DepartmentId INT IDENTITY(1,1) NOT NULL,
	
	Name NVARCHAR(100) NOT NULL,
	
	Description NVARCHAR(500) NULL,
	
	IsActive BIT NOT NULL
		CONSTRAINT DF_Departments_IsActive
		DEFAULT (1),

	CreatedAt DATETIME2(0) NOT NULL
		CONSTRAINT DF_Departments_CreatedAt
		DEFAULT (SYSUTCDATETIME()),

	CONSTRAINT PK_Departments
		PRIMARY KEY (DepartmentId),

	CONSTRAINT UQ_Departments_Name
		UNIQUE (Name),

	CONSTRAINT CK_Departments_Name_NotBlank
		CHECK (LEN(LTRIM(RTRIM(Name))) > 0)
)