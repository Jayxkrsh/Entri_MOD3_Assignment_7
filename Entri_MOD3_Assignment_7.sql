ALTER TABLE Persons -- New column DOB added to persons
ADD DOB DATE;

SELECT * FROM Persons;
-- user defined funtion to calculate age with DOB
DELIMITER $$
CREATE FUNCTION agecalc_dob(DOB int)
returns int
DETERMINISTIC
BEGIN
    RETURN 2024-DOB;
END $$
DELIMITER ;

SELECT agecalc_dob(2024) AS Age ;

-- Write a select query to fetch the Age of all persons using the function that has been created
SELECT p.Id, p.Fname, agecalc_dob(p.DOB) AS Age FROM Persons p;

-- Find the length of each country name in the Country table.
SELECT * from country;
SELECT Id, Country_name, length(Country_name) AS Name_Length FROM Country; 

-- Extract the first three characters of each country's name in the Country table
SELECT ID, Country_Name, LEFT(Country_Name, 3) AS FirstThreeChars
FROM Country;

-- Convert all country names to uppercase and lowercase in the Country table.
SELECT ID, Country_Name,
       UPPER(Country_Name) AS UpperCaseName,
       LOWER(Country_Name) AS LowerCaseName
FROM Country;




