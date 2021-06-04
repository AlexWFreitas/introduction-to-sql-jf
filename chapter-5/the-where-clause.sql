-- Use Database contacts
use contacts;

-- What is the last name of all the people I know whose first name is Jon?
SELECT		p.person_last_name
FROM		person p
WHERE		p.person_first_name = 'Jon';

-- Who are all the people in my contact list that have the first name Jon and have contacted more than five times?
SELECT	p.person_first_name, 
		p.person_last_name
FROM	person							p
WHERE	p.person_first_name	=			'Jon'	
AND 	p.person_contacted_number >		5;

-- Who are all the people in my contact list that have the first name Jon or a last name of Flanders?
SELECT	P.person_first_name,
		P.person_last_name
FROM	Person						P
WHERE	P.person_first_name	=		'Jon'		
OR		P.person_last_name	=		'Flanders';


-- I want the last name of all persons in my contact list that have the first name Jon or that I have contacted more than 0 times?
SELECT	P.person_last_name
FROM	Person							P
WHERE	P.person_first_name	=			'Jon'		
OR		P.person_contacted_number >		0