-- Examples [ CREATE DATABASE ]
-- Create a Database
CREATE DATABASE Contacts;

-- Use a Database
USE Contacts;

-- Select without qualifying database name
SELECT  * 
FROM	Person p;

-- Select while qualifying database name;
SELECT		*
FROM		Contacts.dbo.person p;

-- Demo Example
CREATE DATABASE		contacts_V2;



-- [ CREATE TABLE ] - Example
USE			contacts_V2;
CREATE TABLE	email_address	(
									email_address_id			INTEGER,
									email_address_person_id		INTEGER,
									email_address				VARCHAR(256)
								);


-- Demo Example
USE			contacts_V2;

CREATE TABLE	person	(
							person_id			INTEGER,
							person_first_name	VARCHAR(256),
							person_last_name	VARCHAR(256)
						);