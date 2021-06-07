-- USE database
USE contacts;

-- SELECT * FROM person
SELECT		*
FROM		person;

-- DELETE Example
DELETE FROM	person 
WHERE		person.person_id	= 5;

-- INSERT Example [ Not sure about indentation. ]
INSERT INTO person	(person_id,	person_first_name, person_last_name, person_contacted_number, person_date_last_contacted, person_date_added)
			VALUES	(5,	'Johnny', 'Cage', 0, '2016-05-14 11:43:32',	'2016-05-14 11:43:31'),
					(6,	'Liu',	'Kang',	0,	'2016-05-14 11:43:32',	'2016-05-14 11:43:31'),
					(7,	'Sonia', 'Blade', 0, '2016-05-14 11:43:32',	'2016-05-14 11:43:31'),
					(42, 'Scorpion', 'Subzero',	0, '2016-05-14 11:43:32', '2016-05-14 11:43:31');

-- BULK INSERT from SELECT Query [ MySQL ]
/*
INSERT INTO        person P
SELECT             *
FROM               person OP
WHERE              OP.person_id > 300;
*/


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
					