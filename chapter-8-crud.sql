-- USE database
USE Contacts;

-- SELECT * FROM person
SELECT		*
FROM		person;

-- SELECT * FROM email_address
SELECT		*
FROM		email_address;

-- DELETE Example
DELETE FROM	person 
WHERE		person.person_id	= 5;

-- INSERT Example
INSERT INTO person	(person_id,	person_first_name, person_last_name, person_contacted_number, person_date_last_contacted, person_date_added)
			VALUES	(5,	'Johnny', 'Cage', 0, '2016-05-14 11:43:32',	'2016-05-14 11:43:31'),
					(6,	'Liu',	'Kang',	0,	'2016-05-14 11:43:32',	'2016-05-14 11:43:31'),
					(7,	'Sonia', 'Blade', 0, '2016-05-14 11:43:32',	'2016-05-14 11:43:31'),
					(42, 'Scorpion', 'Subzero',	0, '2016-05-14 11:43:32', '2016-05-14 11:43:31');

-- BULK INSERT from SELECT Query

INSERT INTO        person
SELECT             *
FROM               person OP
WHERE              OP.person_id > 300;



-- Indenting for INSERT [?]

-- Version 1
INSERT INTO person	(
					person_id,	
					person_first_name,	
					person_last_name,	
					person_contacted_number,	
					person_date_last_contacted,		
					person_date_added)
			VALUES	(1,			
					'Jon',				
					'Flanders',			
					0,							
					NULL,							
					'2016-05-14 11:43:31');

-- Version 2
INSERT INTO person	(
				person_id,	
				person_first_name,	
				person_last_name,	
				person_contacted_number,	
				person_date_last_contacted,		
				person_date_added)
			VALUES	(1,			
				'Jon',				
				'Flanders',			
				0,							
				NULL,							
				'2016-05-14 11:43:31');

-- Version 3 - Igor uses this version.
INSERT INTO person	(person_id,	person_first_name, person_last_name, person_contacted_number, person_date_last_contacted, person_date_added)
			VALUES	(1,	'Jon', 'Flanders',	0, NULL, '2016-05-14 11:43:31');

-- Version 4
INSERT INTO person	(person_id,		person_first_name,		person_last_name,		person_contacted_number,	person_date_last_contacted,		person_date_added		)
			VALUES	(1,				'Jon',					'Flanders',				0,							NULL,							'2016-05-14 11:43:31'	);

-- Version 5
INSERT INTO person	(person_id	,	person_first_name	,	person_last_name	,	person_contacted_number	,	person_date_last_contacted	,	person_date_added		)
			VALUES	(1			,	'Jon'				,	'Flanders'			,	0						,	NULL						,	'2016-05-14 11:43:31'	);

-- Version 6
INSERT INTO person	(person_id,		person_first_name,		person_last_name,		person_contacted_number,	person_date_last_contacted,		person_date_added		)
			VALUES	(        1,		            'Jon',			  'Flanders',							  0,						  NULL,		'2016-05-14 11:43:31'	);
					
-- UPDATE - Change email address to something on rows where email_address_id is 5.
UPDATE		E
SET			E.email_address = 'aaron@mail.com'
FROM		email_address E
WHERE		E.email_address_id = 5;

-- UPDATE Example 2 - Updating multiple fields
UPDATE		P
SET			P.person_first_name = 'Bob',
			P.person_last_name = 'Foo'
FROM		person P
WHERE		P.person_id = 1;


-- BAD PRACTICE - DELETES all rows from table person.
-- DELETE FROM		person;


-- DELETE - Example Query
DELETE FROM		person
FROM			person P
WHERE			P.person_id > 4;