-- queries.sql
-- Sample queries for MiniERP (works on SQL Server / LocalDB / Azure SQL syntax)

USE MiniERP;
GO

-- 1. Insert sample employee (example)
INSERT INTO Employees (EmployeeID, FullName, Department, Role, Email)
VALUES (6, 'Tigist Mekonnen', 'HR', 'Recruiter', 'tigist.m@example.com');

-- 2. Select employees by department
SELECT EmployeeID, FullName, Department, Role, Email
FROM Employees
WHERE Department = 'HR';

-- 3. Active employees count per department
SELECT Department, COUNT(*) AS ActiveCount
FROM Employees
WHERE Status = 'Active'
GROUP BY Department;

-- 4. Create a stored procedure to insert a task and log action
IF OBJECT_ID('sp_AddTaskAndLog', 'P') IS NOT NULL
    DROP PROCEDURE sp_AddTaskAndLog;
GO

CREATE PROCEDURE sp_AddTaskAndLog
    @TaskID INT,
    @ProjectID INT,
    @AssignedTo INT,
    @TaskName NVARCHAR(100),
    @Status NVARCHAR(50),
    @DueDate DATE,
    @ChangedBy NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Tasks (TaskID, ProjectID, AssignedTo, TaskName, Status, DueDate)
    VALUES (@TaskID, @ProjectID, @AssignedTo, @TaskName, @Status, @DueDate);

    INSERT INTO SystemLogs (LogID, TableName, Action, ChangedBy, Description)
    VALUES (NEXT VALUE FOR LogSeq, 'Tasks', 'INSERT', @ChangedBy, CONCAT('Task added: ', @TaskName));
END;
GO

-- 5. Example: simple backup simulation (T-SQL pseudo)
-- Note: Real backups require proper server permissions; this is a documented script.
BACKUP DATABASE MiniERP
TO DISK = 'C:\Backups\MiniERP_Full.bak'
WITH FORMAT, INIT, NAME = 'MiniERP-Full-Backup';
GO
