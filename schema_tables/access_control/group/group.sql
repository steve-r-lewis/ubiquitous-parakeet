-- -----------------------------------------------------
-- TABLE: groups
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS groups;

CREATE OR REPLACE TABLE groups (
	group_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'CommentHere',
	group_name TINYTEXT NULL,
	
	record_create_date DATE NOT NULL DEFAULT curdate() COMMENT 'DATE timestamp for the tuple create date in the format YYYY-MM-DD',
	record_create_time TIME NOT NULL DEFAULT curdate() COMMENT 'TIME timestamp for the tuple create time in the format HH:MM:SS.ffffff',
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
	
	CONSTRAINT PRIMARY KEY (user_id)
)
COMMENT 'CommentHere'
ENGINE = InnoDB;
-- -----------------------------------------------------
