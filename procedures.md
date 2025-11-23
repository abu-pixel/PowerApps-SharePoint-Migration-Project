Information Systems Standard Procedures

Prepared by: Esmail

These procedures define how business data must be created, updated, secured, and maintained across ERP-related systems.

1. Database Change Control Procedure

Purpose: Ensure every modification in the database is logged, reviewed, and approved.

Steps:

Developer submits a change request.

Administrator reviews the SQL script.

Changes are applied only in staging.

Logs are automatically written to SystemLogs table.

Admin signs off and deploys to production.

2. User Access Management Procedure

Purpose: Ensure secure and appropriate access to ERP data.

Rules:

Every user must belong to an access role in AccessRoles.

All permissions are “least privilege.”

Access reviews occur monthly.

Removed employees must have accounts disabled same day.

3. Backup & Recovery Procedure

Daily Routine:

Full database backup at 2 AM.

Transaction log backup every 30 minutes.

Backup copies stored on two locations.

Recovery Steps:

Assess impact and log incident.

Restore latest backup.

Verify tables and relationships.

Update SystemLogs.

4. Data Entry Standards

Required fields must not be left empty.

Names use Title Case.

Dates must be YYYY-MM-DD.

No duplicate records allowed.

Each new entry is automatically timestamped.

5. ERP Project Workflow Procedure

Create a project in Projects.

Assign team members in Employees.

Add tasks in Tasks.

Update task status daily.

All critical updates must include a description in SystemLogs.

6. Incident Reporting Procedure

Every system issue must include:

Who reported it

Impact level

Time of detection

System area affected

Steps taken

Resolution time

7. Data Security Procedure

All database connections must be encrypted.

Default passwords are forbidden.

Sensitive data is visible only to roles with CanRead = 1.

Logs are monitored for suspicious activity.

8. System Documentation Procedure

Every new system feature must be documented within 24 hours.

Documentation stored in repository under /docs.

Architecture diagrams updated monthly.
