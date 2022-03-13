-- -----------------------------------------------------
-- TABLE: user_profile
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS user_profile;

CREATE OR REPLACE TABLE user_profile (
	user_profile_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'user_profile\'',
	created_by BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'user\' on PRIMARY KEY field \'user_id\'',

	first_name VARCHAR(20) NOT NULL COMMENT 'User\'s first name',
	middle_names VARCHAR(255) NOT NULL COMMENT 'User\'s middle names separated by space characters',
	last_name VARCHAR(20) NOT NULL COMMENT 'User\'s family or given name',

	profile_picture  TINYTEXT NULL DEFAULT null COMMENT 'The path to the users profile picture file stored on the web server disc',
	date_of_birth DATE NOT NULL DEFAULT curdate() COMMENT 'Users date of birth in the format YYYY-MM-DD',

	profile_biography  TEXT NULL DEFAULT null COMMENT 'Text biography of the users profile',
	
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
	
	CONSTRAINT PRIMARY KEY (user_profile_id),

	CONSTRAINT url_profile_user_user_id_fk
		FOREIGN KEY (created_by) REFERENCES user (user_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)
COMMENT 'Table to store a given users profile'
ENGINE = InnoDB;
-- -----------------------------------------------------
