# SupportDesk SQL API — Learning Log

## Phase 1.1–1.5 — Environment

- Learned the distinction between SQL, T-SQL, SQL Server and SSMS.
- Set up Azure SQL Database because the laptop uses Windows ARM64.
- Created `SupportDeskDB`.
- Connected SSMS 22 to Azure SQL.
- Used Microsoft Entra authentication.
- Verified database context using `DB_NAME()`.
- Learned the distinction between network access, authentication and authorization.

## Phase 1.6A — Customers

Created `dbo.Customers`.

Concepts learned:

- `CREATE TABLE`
- `dbo` schema
- `INT`
- `IDENTITY(1,1)`
- `PRIMARY KEY`
- surrogate keys
- `NVARCHAR`
- `NULL`
- `NOT NULL`
- `UNIQUE`
- `BIT`
- `DEFAULT`
- `DATETIME2`
- `SYSUTCDATETIME()`
- named constraints
- DDL vs DML

### Key design decisions

`CustomerId` is a surrogate primary key rather than using email because email is business data and may change.

Phone numbers are stored as text because they can contain country codes, plus signs, spaces and leading zeroes and aren't used for arithmetic.

Email uniqueness is enforced at the database level using a `UNIQUE` constraint.

## Phase 1.6B — Departments

Created dbo.Departments.

Concepts learned:
- CHECK constraints
- Difference between NULL and blank text
- LTRIM
- RTRIM
- LEN
- Multi-row INSERT
- UPDATE
- WHERE
- Importance of WHERE with UPDATE/DELETE
- Database-enforced business rules
- Separating schema and seed scripts

Constraints:
- PK_Departments
- UQ_Departments_Name
- CK_Departments_Name_NotBlank
- DF_Departments_IsActive
- DF_Departments_CreatedAt

## Phase 1.6C — Agents + Our First FOREIGN KEY

Concepts learned:
- one-to-many relationships
- foreign keys
- referential integrity
- parent vs child tables
- orphan records
- INNER JOIN
- join conditions using ON
- table aliases
- basic LEFT JOIN
- basic COUNT
- basic GROUP BY
- restrictive deletes vs cascade deletes