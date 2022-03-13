-- -----------------------------------------------------
-- TABLE: user
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
CREATE OR REPLACE TABLE user (
	user_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'user\' on field \'user_id\'',
	user_uuid CHAR(36) NOT NULL COMMENT 'Unique User ID value generated through code at the point of record creation',

	user_name VARCHAR(20) NOT NULL COMMENT 'User\'s online username as displayed publicly for the account and as used for login purposes',

	login_email VARCHAR(45) NOT NULL COMMENT 'User\'s email used for platform login',
	login_password_hash VARCHAR(255) NOT NULL COMMENT 'User\'s login password',

	verified_code VARCHAR(32) NULL COMMENT 'Th=e code used to ensure the account has been authenticated and verified',
	is_verified TINYINT(1) NULL COMMENT 'Set to true if the users account credentials have been verified',
	is_active TINYINT(1) NULL COMMENT 'Set to true if the user\'s account is active',

	record_create_date DATE NOT NULL DEFAULT curdate() COMMENT 'DATE timestamp for the tuple create date in the format YYYY-MM-DD',
	record_create_time TIME NOT NULL DEFAULT curdate() COMMENT 'TIME timestamp for the tuple create time in the format HH:MM:SS.ffffff',
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (user_id),

	CONSTRAINT UNIQUE INDEX user_uuid_unique_index (user_uuid ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX login_email_unique_index (login_email ASC) VISIBLE
)
COMMENT 'Table used for authentication'
ENGINE = InnoDB;
-- -----------------------------------------------------
