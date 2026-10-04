--creating temporary tables
select * into #temp1 from [dbo].[Employees]

select * from #temp1;

select * from dbo.Employees;
--creating temporary tables
select * into ##temp2 from [dbo].[EmployeeRecords];

select * from ##temp2;
select * from dbo.EmployeeRecords;

-- Conclusion:
-- #temp (local temporary table)
-- - Accessible only within the current session/connection
-- - Not visible to other sessions or queries
-- - Automatically dropped when the session ends

-- ##temp (global temporary table)
-- - Accessible across multiple sessions/connections
-- - Visible to other users and queries
-- - Dropped only when the creating session ends 
--   and no other session is using it

-- Summary:
-- #temp  -> session-specific (private)
-- ##temp -> global (shared)