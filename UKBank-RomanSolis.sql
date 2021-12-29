/* Create UKBank Databae and a Import a table from a Flat-File source */

Use UKBank
Select * from [dbo].[P1-UK-Bank-Customers]

-- Check for duplicate values of name
Select [CompleteName],count([CompleteName]) AS CountName 
From [dbo].[P1-UK-Bank-Customers]
Group by [CompleteName]
Having Count([CompleteName])>1

Select Sum([Balance]) as TOTAL from [dbo].[P1-UK-Bank-Customers]
Select count([Customer ID]) as TOTAL from [dbo].[P1-UK-Bank-Customers]
Select MONTH([Date Joined]) from [dbo].[P1-UK-Bank-Customers]

-- Alter Data typ of Balance 
ALTER TABLE [dbo].[P1-UK-Bank-Customers] ALTER COLUMN [Balance] Float
ALTER TABLE [dbo].[P1-UK-Bank-Customers] ALTER COLUMN [Month] Date

