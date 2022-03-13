-- -----------------------------------------------------
-- TABLE: permission
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
CREATE OR REPLACE TABLE permission (
	permission_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'permission\' on field \'permission_id\'',
	
	title CHAR(75) COMMENT '',
	slug CHAR(100) COMMENT '',
	
	description TINYTEXT COMMENT '',
	
	active TINYINT(1) COMMENT '',
	content TEXT COMMENT '',
	
	created_at DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the current record in the format YYYY-MM-DD HH:MM:SS.ffffff',
	updated_at DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the current record in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (permission_id)
)
COMMENT ''
ENGINE = InnoDB;
-- -----------------------------------------------------
