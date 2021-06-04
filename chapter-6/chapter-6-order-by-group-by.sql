-- Use Database
use contacts;

-- Who are all the people in my contact list, ordered by last name?
SELECT		P.person_first_name		as	FirstName, 
			P.person_last_name		as	LastName
FROM		person						P
ORDER BY	P.person_last_name;

-- What is the total number of times I've contacted someone in my contacts?
SELECT	SUM(P.person_contacted_number)		as	ContactedTotal
FROM	Person									P;

-- How many entries with last name 'Ahern" does my contact list have?
SELECT	COUNT(P.person_last_name)		as	AhernCount
FROM	Person								P
WHERE	P.person_last_name				=	'Ahern';

-- What is the maximum number of times I have contacted a person?
SELECT	MAX(P.person_contacted_number)		as	MaxContacted
FROM	Person									P;

-- What is the minimum number of times I have contacted a person?
SELECT	MIN(P.person_contacted_number)		as	MinContacted
FROM	Person									P;

-- What is the average number of times I have contacted a person?
SELECT	AVG(P.person_contacted_number)		as	AverageContacted
FROM	Person									P;

-- What is the count of unique first names among my contacts?
SELECT	COUNT(DISTINCT P.person_first_name)		as	'Unique First Names In Contact List'
FROM	Person										P;

-- What is the count of every unique first name among my contacts?
SELECT		COUNT(P.person_first_name)				as	NameCount, 
			P.person_first_name						as	FirstName
FROM		Person										P
GROUP BY	P.person_first_name;

-- What is the count of unique first names among my contacts that appear at least once?
SELECT		COUNT(P.person_first_name)		as	NameCount,
			P.person_first_name				as	FirstName
FROM		Person								P
GROUP BY	P.person_first_name
HAVING		COUNT(P.person_first_name)		>=	1;
