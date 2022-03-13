-- -----------------------------------------------------
-- TABLE: user_token
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS user_token;

CREATE OR REPLACE TABLE user_token (
	user_token_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'user_token\'',
	belongs_to BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'user\' on PRIMARY KEY field \'user_id\'',
	
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
	
	CONSTRAINT PRIMARY KEY (user_token_id),

	CONSTRAINT user_token_user_user_id_fk
		FOREIGN KEY (belongs_to) REFERENCES user (user_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)
COMMENT 'CommentHere'
ENGINE = InnoDB;
-- -----------------------------------------------------
