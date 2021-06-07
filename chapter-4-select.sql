-- USE contacts database
USE contacts;

-- Selecting a list of two strings ( No tables involved )
SELECT 'Hello','World';

-- Inserting a person into table Person
INSERT INTO		person
VALUES			(4, 'Jon', 'Ahern', 10, '2017-07-14 11:43:31', '2017-07-14 11:43:31');

-- * Wildcard "SELECT List" character - Means SELECT all columns FROM table named person.
SELECT	* 
FROM	person;

-- Selecting a string list with aliases for the column name.
SELECT 'Hello' FirstWord,'World' as SecondWord;

-- Selecting p.person_first_name from person using aliases.
SELECT			p.person_first_name as FirstName 
FROM			person as p;

-- Select distinct results from column first_name on table person.
SELECT DISTINCT	p.person_first_name as FirstName 
FROM			person p;	

-- Select distinct results from the combination of columns first_name and last_name on table person.
-- Notice that it's ordered by the first column value.
SELECT DISTINCT	p.person_first_name as 'First Name', p.person_last_name as 'Last Name'
FROM			person p;	
