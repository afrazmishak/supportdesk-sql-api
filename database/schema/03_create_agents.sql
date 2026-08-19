CREATE TABLE dbo.Agents
(
	AgentId INT IDENTITY(1,1) NOT NULL,

	FullName NVARCHAR(150) NOT NULL,

	Email NVARCHAR(255) NOT NULL,

	DepartmentId INT NOT NULL,

	IsActive BIT NOT NULL
		CONSTRAINT DF_Agents_IsActive
		DEFAULT (1),

	CreatedAt DATETIME2(0) NOT NULL
		CONSTRAINT DF_Agents_CreatedAt
		DEFAULT (SYSUTCDATETIME()),

	UpdatedAt DATETIME2(0) NULL,

	CONSTRAINT PK_Agents
		PRIMARY KEY (AgentId),

	CONSTRAINT UQ_Agents_Email
		UNIQUE (Email),

	CONSTRAINT CK_Agents_FullName_NotBlank
		CHECK (LEN(LTRIM(RTRIM(FullName))) > 0),

	CONSTRAINT FK_Agents_Departments
	FOREIGN KEY (DepartmentId)
	REFERENCES dbo.Departments (DepartmentId)
);