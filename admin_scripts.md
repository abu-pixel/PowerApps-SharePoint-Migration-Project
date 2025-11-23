# Database Administration & Monitoring Scripts
Prepared by: Abubeker

## 1. Naming conventions
- Tables use PascalCase: Employees, Projects, Tasks, SystemLogs.
- Primary keys: TableNameID (EmployeeID, ProjectID).
- All datetime columns: CreatedAt DATETIME DEFAULT GETDATE().

## 2. Lightweight health checks (SQL examples)
-- 1) Long-running queries (shows ability to spot issues)
SELECT session_id, status, login_name, cpu_time, total_elapsed_time
FROM sys.dm_exec_sessions
WHERE status = 'running';

-- 2) Database size summary
EXEC sp_spaceused;

-- 3) Log shipping / backup checklist (documented)
-- Daily full, hourly transaction logs, retention 14 days.

## 3. Security checklist
- Enforce least privilege via AccessRoles table and application checks.
- Rotate admin passwords quarterly.
- Audit SystemLogs daily.

## 4. Disaster recovery (playbook)
1. Identify incident (severity).
2. Notify stakeholders.
3. Restore latest full backup to staging.
4. Apply transaction logs.
5. Run integrity checks (DBCC CHECKDB).
6. Validate data and switch production.

Commit message: Add DBA admin scripts and checklist
