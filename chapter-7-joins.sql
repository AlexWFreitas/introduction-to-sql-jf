-- Use database contacts
use contacts;

-- What are all the first names and email addresses I have? [ CROSS JOIN - Cartesian Product Result - Bad Practice ]
SELECT	P.person_first_name,
		E.email_address
FROM	Person				P,
		email_address		E;

-- What are my contacts email addresses?
SELECT		P.person_first_name, 
			P.person_last_name,
			E.email_address
FROM		person					P	WITH(NOLOCK)
INNER JOIN	email_address			E	WITH(NOLOCK)		ON	p.person_id		=	e.email_address_person_id;

-- What are my contacts and their email addresses, including those I don't have an email for?
SELECT			P.person_first_name, 
				P.person_last_name,
				E.email_address
FROM			person					P	WITH(NOLOCK)
LEFT OUTER JOIN	email_address			E	WITH(NOLOCK)		ON	p.person_id		=	e.email_address_person_id;

-- What are the email addresses I have, including those emails I don't have a person for?
SELECT				P.person_first_name, 
					P.person_last_name,
					E.email_address
FROM				person					P	WITH(NOLOCK)
RIGHT OUTER JOIN	email_address			E	WITH(NOLOCK)		ON	p.person_id		=	e.email_address_person_id;


-- What are all my contacts and their email addresses, including the ones missing an email address and the ones with an email address but missing a contact name?
SELECT				P.person_first_name, 
					P.person_last_name,
					E.email_address
FROM				person					P	WITH(NOLOCK)
FULL OUTER JOIN		email_address			E	WITH(NOLOCK)		ON	p.person_id		=	e.email_address_person_id;

-- What are all my contacts and their email addresses, including the ones missing an email address and the ones with an email address but missing a contact name?
SELECT			P.person_first_name, 
				P.person_last_name,
				E.email_address
FROM			person					P	WITH(NOLOCK)
LEFT OUTER JOIN	email_address			E	WITH(NOLOCK)		ON	p.person_id		=	e.email_address_person_id
UNION -- DISTINCT on MySQL
SELECT				P.person_first_name, 
					P.person_last_name,
					E.email_address
FROM				person					P	WITH(NOLOCK)
RIGHT OUTER JOIN	email_address			E	WITH(NOLOCK)		ON	p.person_id		=	e.email_address_person_id;