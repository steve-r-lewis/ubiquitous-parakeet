-- -----------------------------------------------------
-- TABLE: role
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
CREATE OR REPLACE TABLE role (
	role_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'role\' on field \'role_id\'',
	
	title CHAR(75) COMMENT '',
	slug CHAR(100) COMMENT '',
	description TINYTEXT COMMENT '',
	active TINYINT(1) COMMENT '',
	
	content TEXT COMMENT '',
	
	created_at DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
	updated_at DATETIME NOT NULL DEFAULT current_timestamp() COMMENT '',

	CONSTRAINT PRIMARY KEY (role_id)
)
COMMENT ''
ENGINE = InnoDB;
-- -----------------------------------------------------
