CREATE TABLE e_user(
	id					VARCHAR(36) NOT NULL,
	created_at 			TIMESTAMP,
	created_by 			VARCHAR ( 36 ),
	last_modified_at 	TIMESTAMP,
	last_modified_by 	VARCHAR ( 36 ),
	VERSION 			int4 NOT NULL,
	username 			VARCHAR(100) NOT NULL UNIQUE,
	password			VARCHAR(255) NOT NULL,
	display_name		VARCHAR(255) NOT NULL,
	first_name			VARCHAR(100),
	last_name			VARCHAR(100),
	email				VARCHAR(100) NOT NULL UNIQUE,
	avatar				VARCHAR(255),
	status				VARCHAR(50) NOT NULL,
	PRIMARY KEY ( ID ) 
);
CREATE TABLE e_group_user ( 
	group_id 			VARCHAR ( 36 ) NOT NULL, 
	user_id 			VARCHAR ( 36 ) NOT NULL, 
	PRIMARY KEY ( group_id, user_id ) 
);

ALTER TABLE IF EXISTS e_group_user 
	ADD CONSTRAINT FK_GROUP_ROLE_USER 
	FOREIGN KEY ( user_id ) REFERENCES e_user(id);
	
ALTER TABLE IF EXISTS e_group_user 
	ADD CONSTRAINT FK_GROUP_ROLE_GROUP 
	FOREIGN KEY ( group_id ) REFERENCES e_group(id);