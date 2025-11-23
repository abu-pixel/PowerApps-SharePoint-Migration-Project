-- =============================
-- ERP / Business System Database Schema
-- Designed by: Esmail
-- =============================

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    Department NVARCHAR(50),
    Role NVARCHAR(50),
    Email NVARCHAR(100),
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Projects table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName NVARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Status NVARCHAR(50),
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Tasks table
CREATE TABLE Tasks (
    TaskID INT PRIMARY KEY,
    ProjectID INT,
    AssignedTo INT,
    TaskName NVARCHAR(100),
    Status NVARCHAR(50),
    DueDate DATE,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    FOREIGN KEY (AssignedTo) REFERENCES Employees(EmployeeID),
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- System Logs table for change tracking
CREATE TABLE SystemLogs (
    LogID INT PRIMARY KEY,
    TableName NVARCHAR(50),
    Action NVARCHAR(50),
    ChangedBy NVARCHAR(100),
    ChangeDate DATETIME DEFAULT GETDATE(),
    Description NVARCHAR(200)
);

-- Access Roles (simulating ERP user access control)
CREATE TABLE AccessRoles (
    RoleID INT PRIMARY KEY,
    RoleName NVARCHAR(50),
    CanRead BIT,
    CanWrite BIT,
    CanDelete BIT,
    CreatedAt DATETIME DEFAULT GETDATE()
);
