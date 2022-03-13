-- -----------------------------------------------------
-- TABLE: permission_role
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS permission_role;

CREATE TABLE IF NOT EXISTS permission_role (
	permission_role_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for \'permission_role\'',
	user_id BIGINT NOT NULL COMMENT 'FOREIGN KEY referencing the table \'user\' on PRIMARY KEY field \'user_id\'',
	
	record_create_date DATE NOT NULL DEFAULT curdate() COMMENT 'DATE timestamp for the tuple create date in the format YYYY-MM-DD',
	record_create_time TIME NOT NULL DEFAULT curdate() COMMENT 'TIME timestamp for the tuple create time in the format HH:MM:SS.ffffff',
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
	
	name VARCHAR(15) NOT NULL,
	
	PRIMARY KEY (permission_role_id),
	
	UNIQUE INDEX name_unique (name ASC) VISIBLE
)
COMMENT 'CommentHere'
ENGINE = InnoDB;
-- -----------------------------------------------------
