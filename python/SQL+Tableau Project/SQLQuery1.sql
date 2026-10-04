create database [Tableau Project 1]
use [tableau project 1]
select * from [dbo].[Depression+Student+Dataset]
select Gender,count (*) from [dbo].[Depression+Student+Dataset] group by gender;

update [dbo].[Depression+Student+Dataset] set gender ='F' where gender='Female';

update [dbo].[Depression+Student+Dataset] set gender ='M' where gender='Male';

--Vid 3

select age,count(*) [Count] from [dbo].[Depression+Student+Dataset] 
group by age 
order by age desc

alter table [dbo].[Depression+Student+Dataset]
add Age_Group varchar(max)

select * from [dbo].[Depression+Student+Dataset]

update [dbo].[Depression+Student+Dataset]
set age_group =
case when Age between 18 and 24 then 'A1'
Else case when age between 25 and 30 then 'A2'
else 'A3' end end

select age_group,count(*) from [dbo].[Depression+Student+Dataset]
group by age_group

--Vid 4
select * from INFORMATION_SCHEMA.columns where table_name 
like 'Depression+Student+Dataset'


select Academic_Pressure,count(*) from [dbo].[Depression+Student+Dataset]
group by Academic_Pressure

select Study_Satisfaction,count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Satisfaction

select Sleep_Duration,count(*) from [dbo].[Depression+Student+Dataset]
group by Sleep_Duration

select Dietary_Habits,count(*) from [dbo].[Depression+Student+Dataset]
group by Dietary_Habits

select Have_you_ever_had_suicidal_thoughts,count(*) from [dbo].[Depression+Student+Dataset]
group by Have_you_ever_had_suicidal_thoughts

select Study_Hours,count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Hours

select Financial_Stress,count(*) from [dbo].[Depression+Student+Dataset]
group by Financial_Stress

select Family_History_of_Mental_Illness,count(*) from [dbo].[Depression+Student+Dataset]
group by Family_History_of_Mental_Illness

select Depression,count(*) from [dbo].[Depression+Student+Dataset]
group by Depression

select * from [Depression+Student+Dataset]

alter table [Depression+Student+Dataset]
add Index_Column int identity(1,1)

update [Depression+Student+Dataset]
set Depression = 'No' where Depression = 0

select * from INFORMATION_SCHEMA.columns where TABLE_NAME LIKE 'Depression+Student+Dataset'

ALTER TABLE [Depression+Student+Dataset]
ALTER COLUMN DEPRESSION VARCHAR(MAX)

UPDATE [Depression+Student+Dataset]
set Depression = 'Yes' where Depression = '1'

select Depression,count(*) from [Depression+Student+Dataset] group by Depression