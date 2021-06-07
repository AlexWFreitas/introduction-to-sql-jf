-- Examples [ CREATE DATABASE ]
-- Create a Database
CREATE DATABASE		Contacts;

-- Use a Database
USE			Contacts;

-- Select without qualifying database name
SELECT		* 
FROM		Person p;

-- Select while qualifying database name;
SELECT		*
FROM		Contacts.dbo.person p;

-- Demo Example
CREATE DATABASE		contacts_V2;



-- [ CREATE TABLE ] - Example
USE				contacts_V2;
CREATE TABLE	email_address	(
									email_address_id			INTEGER,
									email_address_person_id		INTEGER,
									email_address				VARCHAR(256)
								);


-- Demo Example
USE				contacts_V2;
CREATE TABLE	person			(
									person_id			INTEGER,
									person_first_name	VARCHAR(256),
									person_last_name	VARCHAR(256)
								);


-- [ NOT NULL AND NULL ]
-- Default is NULL
USE				contacts_V2;
DROP TABLE		email_address;
CREATE TABLE	email_address		(
										email_address_id			INTEGER NOT NULL,
										email_address_person_id		INTEGER,
										email_address				VARCHAR(55) NOT NULL
									);


-- [ PRIMARY KEY ]
-- Creating a table with a PRIMARY KEY
USE				contacts_V2;
DROP TABLE		email_address;
CREATE TABLE	email_address		(
										email_address_id			INTEGER PRIMARY KEY,
										email_address_person_id		INTEGER,
										email_address				VARCHAR(55) NOT NULL
									);


-- [ CONSTRAINT ]
-- Specifies rules for data in a table.
-- Adding CONSTRAINT - PRIMARY KEY
USE				contacts_V2;
CREATE TABLE	phone_number	(
									phone_number_id					INTEGER NOT NULL,
									phone_number_person_id			INTEGER NOT NULL,
									phone_number					VARCHAR(55) NOT NULL,
						CONSTRAINT	PK_phone_number					PRIMARY KEY (phone_number_id)
								);

-- [ ALTER TABLE ]
-- Altering column to be NOT NULL
USE					contacts_V2;
ALTER TABLE			person
ALTER COLUMN		person_id					INTEGER NOT NULL;

-- Adding PRIMARY KEY to person
USE					contacts_V2;
ALTER TABLE			person
ADD CONSTRAINT		PK_person_id				PRIMARY KEY	(person_id);

-- Adding FOREIGN KEY CONSTRAINT to email_address_person_id
USE					contacts_V2;
ALTER TABLE			email_address		
ADD CONSTRAINT		FK_email_address_person		FOREIGN KEY	(email_address_person_id)	REFERENCES person(person_id);


-- [ DROP TABLE ]
USE				contacts_V2;
-- Added comments on the queries below because they are destructive
-- DROP TABLE	email_address;
-- DROP TABLE	person;

-- Recreating Tables
USE				contacts_V2;
CREATE TABLE	person			(
									person_id			INTEGER PRIMARY KEY,
									person_first_name	VARCHAR(256),
									person_last_name	VARCHAR(256)
								);

CREATE TABLE	email_address		(
										email_address_id			INTEGER PRIMARY KEY,
										email_address_person_id		INTEGER,
										email_address				VARCHAR(55) NOT NULL
									);

USE					contacts_V2;
ALTER TABLE			email_address		
ADD CONSTRAINT		FK_email_address_person		FOREIGN KEY	(email_address_person_id)	REFERENCES person(person_id);