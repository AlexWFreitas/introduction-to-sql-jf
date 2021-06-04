-- select database
use contacts;

-- select * from person
SELECT		*
FROM		person;

-- DELETE Example
DELETE FROM		person 
WHERE			person.person_id	= 5;

-- INSERT Example [ Not sure about indentation. ]
INSERT INTO person	(
					person_id,	
					person_first_name,	
					person_last_name,	
					person_contacted_number,	
					person_date_last_contacted,		
					person_date_added)
			VALUES	(5,			
					'Johnny',				
					'Cage',			
					0,							
					'2016-05-14 11:43:32',							
					'2016-05-14 11:43:31')
					,
					(6,			
					'Liu',				
					'Kang',			
					0,							
					'2016-05-14 11:43:32',							
					'2016-05-14 11:43:31')
					,
					(7,			
					'Sonia',				
					'Blade',			
					0,							
					'2016-05-14 11:43:32',							
					'2016-05-14 11:43:31')
					,
					(42,			
					'Scorpion',				
					'Subzero',			
					0,							
					'2016-05-14 11:43:32',							
					'2016-05-14 11:43:31');


-- Indentação para INSERT [?]

-- Versão 1
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

-- Versão 2
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

-- Versão 3 - Preferida do Igor
INSERT INTO person	(person_id,	person_first_name, person_last_name, person_contacted_number, person_date_last_contacted, person_date_added)
			VALUES	(1,	'Jon', 'Flanders',	0, NULL, '2016-05-14 11:43:31');


-- Versão 4
INSERT INTO person	(person_id,		person_first_name,		person_last_name,		person_contacted_number,	person_date_last_contacted,		person_date_added		)
			VALUES	(1,				'Jon',					'Flanders',				0,							NULL,							'2016-05-14 11:43:31'	);

-- Versão 5
INSERT INTO person	(person_id	,	person_first_name	,	person_last_name	,	person_contacted_number	,	person_date_last_contacted	,	person_date_added		)
			VALUES	(1			,	'Jon'				,	'Flanders'			,	0						,	NULL						,	'2016-05-14 11:43:31'	);

-- Versão 6
INSERT INTO person	(person_id,		person_first_name,		person_last_name,		person_contacted_number,	person_date_last_contacted,		person_date_added		)
			VALUES	(        1,		            'Jon',			  'Flanders',							  0,						  NULL,		'2016-05-14 11:43:31'	);
					