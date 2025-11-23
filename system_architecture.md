ERP-Style Business System Architecture — Abubeker

This document explains the architecture, components, data flow, and system interactions for the SQL-driven business application.

1. System Overview

The system is designed as a lightweight ERP-like platform that manages:

Employee information

Customer data

Projects and tasks

System logs

User access and authorization

2. Architecture Diagram (Text-Based)
          +----------------------+
          |     Users & Admins   |
          +----------+-----------+
                     |
                     v
          +----------------------+
          |  Front-End (PowerApps) |
          +----------+-----------+
                     |
                     v
          +----------------------+
          |  API/Business Logic  |
          |  (Power Automate)    |
          +----------+-----------+
                     |
                     v
          +----------------------+
          |   SQL ERP Database   |
          +----------+-----------+
                     |
                     v
          +----------------------+
          |  Reporting Layer     |
          | (Power BI / Logs)    |
          +----------------------+

3. Modules Included
3.1 Employee Management Module

Stores employee data

Tracks roles and system permissions

Logs activity

3.2 Customer Management Module

Stores client information

Tracks status (Active/Inactive)

3.3 Project Management Module

Projects linked to customers

Each project has tasks

Tracks task deadlines and progress

3.4 Access Control Module

Role-based access

Permission definition per feature

3.5 System Logging Module

Tracks every change

Records system activity

Used for auditing

4. Data Flow Summary
4.1 User → PowerApps

User enters or edits data.

4.2 PowerApps → Power Automate

Flow validates input and calls the database.

4.3 Power Automate → SQL Database

Executes CRUD operations (Insert, Update, Delete).

4.4 SQL Database → Power BI

Power BI connects to SQL for dashboards and analytics.

5. Security Architecture
5.1 Authentication

Role-based access via AccessRoles table

5.2 Authorization

CRUD permissions handled through Permissions table

5.3 Data Security

All sensitive data is logged

Every change triggers a log entry

6. Backup & Recovery Layer

Daily full backups

Transaction log backups

Multi-location redundancy

7. Reporting and Analytics

Reports include:

Employee performance

Project progress

Customer activity

System usage logs

All reports handled through Power BI.

8. Integration Points

PowerApps

Power Automate

SQL Server

Power BI

9. Future Enhancements

AI-based project task prediction

Automated error detection

Multi-role workflow approvals
