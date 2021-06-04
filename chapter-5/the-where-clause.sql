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

-- Who are all the people in my contact list that I have contacted at least once but no more than 20 times?
SELECT	P.person_first_name,
		P.person_last_name
FROM	person						P			WITH(NOLOCK)
WHERE	P.person_contacted_number	BETWEEN		1 AND 20;

-- Who are all the people in my contact list that have a first name that begins with the letter J?
SELECT	P.person_first_name,
		P.person_last_name
FROM	person						P			WITH(NOLOCK)
WHERE	P.person_first_name			LIKE		'J%';

-- Who are all the people in my contact list that have a first name that contains the letter o?
SELECT	P.person_first_name,
		P.person_last_name
FROM	person						P			WITH(NOLOCK)
WHERE	P.person_first_name			LIKE		'%o%';

-- Who are all the people in my contact list that are named Jon or Fritz?
SELECT	P.person_first_name,
		P.person_last_name
FROM	person						P			WITH(NOLOCK)
WHERE	P.person_first_name			IN			('Jon', 'Fritz');

-- Who are all the people in my contact list that don't have a last name?
SELECT	P.person_first_name,
		P.person_last_name
FROM	person						P			WITH(NOLOCK)
WHERE	P.person_last_name			IS			NULL;

-- Who are all the people in my contact list that have a last name?
SELECT	P.person_first_name,
		P.person_last_name
FROM	person						P			WITH(NOLOCK)
WHERE	P.person_last_name			IS NOT		NULL;