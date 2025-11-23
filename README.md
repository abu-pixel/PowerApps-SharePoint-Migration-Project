PowerApps & SharePoint Migration Simulation Project

By: Abubeker Ahmedel

Overview

This project simulates a real-world business system process that matches the following criteria:

✔ Experience with ERP systems
✔ Ability to provide technical expertise for business system applications
✔ Experience managing SQL/ERP-related databases
✔ Ability to standardize and enforce information system procedures
✔ Administrative skills (task tracking, scheduling, documentation)
✔ Technical skills (project management, data handling, collaboration tools)

1. Business Application Simulation

I created a mock business workflow system using:

SharePoint-style Lists (simulated using structured JSON tables)

ERP-style data tables

SQL-style queries (written as T-SQL)

This demonstrates understanding of business systems without needing full software installation.

2. ERP Database Simulation
Tables Created

Employees

Projects

Tasks

SystemLogs

Sample SQL Code
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    Department NVARCHAR(50),
    Role NVARCHAR(50)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName NVARCHAR(100),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE Tasks (
    TaskID INT PRIMARY KEY,
    ProjectID INT,
    AssignedTo INT,
    TaskName NVARCHAR(100),
    Status NVARCHAR(50),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    FOREIGN KEY (AssignedTo) REFERENCES Employees(EmployeeID)
);

3. Information Systems Procedures

I created standard procedures including:

Data validation steps

Backup simulation

SQL change log

Access control levels

Naming conventions

Example:

Procedure-01: All tables must use PascalCase names.
Procedure-02: Every update must be logged in SystemLogs.
Procedure-03: Only Admin role can perform DELETE operations.

4. Migration Process (Simulated)

I documented a migration plan showing:

✔ From: On-premises ERP
✔ To: Cloud-style system (PowerApps/SharePoint model)

Steps include:

Extract data

Clean and validate

Transform into SharePoint structure

Deploy to cloud structure

Create logs of each step

5. Technical Expertise Demonstrated

Writing SQL queries

Designing relational databases

Creating structured business workflows

Documenting admin procedures

Simulating ERP → Cloud migration

Managing system logs

Using GitHub for version control

Organizing project documentation professionally

Conclusion

This project demonstrates complete fulfillment of the criteria:

ERP understanding

SQL/Database administration

Business system support

Procedure enforcement

Administrative and technical skills
