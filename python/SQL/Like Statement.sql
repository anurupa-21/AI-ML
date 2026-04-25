-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');

select * from Employees_US

--wildcards
--1) % : It may represent 0,1 or multiple characters
--2) _: It represent only 1 character

--Find Employees whose last name start with S
select * from Employees_US where LastName like 'S%';

--Find Employee whose first name ends with 'a'
select * from Employees_US where FirstName like '%a';

--find employees whose department contains 'Eng'
select * from Employees_US where Department like '%Eng%';

--find employees whose last name is exactly 5 character long
select * from Employees_US where LastName like '_____'

--find employees whose first name starts with 'C' or 'D'
select * from Employees_US where FirstName like 'C%' or FirstName like 'D%';

--find employees whose last name contains 'son'
select * from Employees_US where LastName like '%son%'

--find employees whose first name contains the letter 'i' as 2nd character
select * from Employees_US where FirstName like '_i%';

-- find employees whose last name start with any letter b/w 'A' and 'L'
select * from Employees_US where LastName like '[A-L]%';

--find employees whose first name does not contain 'o'
select * from Employees_US where FirstName not like'%o%';

--find employees whose last name end with 'a' and is exactly 5 character long
select * from Employees_US where LastName like '____a';

--find employees whose department start with 'mar' and ends with 'ing'
select * from Employees_US where Department like 'Mar%ing'

--find employees whose first name has an 'a' in the 3rd position
select * from Employees_US where FirstName like '__a%'

--find employees whose last name starts with 'Br' or 'Bl'
select * from Employees_US where LastName like 'Br%' or LastName like 'Bl%'

--find employee whose first name start with vowel
select * from Employees_US where firstname like '[aeiou]%'

--find employees whose first name does not start with a consonant
select * from Employees_US where firstname not like '[^aeiou]%' 



