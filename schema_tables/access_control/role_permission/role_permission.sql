-- -----------------------------------------------------
-- TABLE: role_permission
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
CREATE OR REPLACE TABLE role_permission (
	role_permission_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'role_permission\' on field \'role_permission_id\'',
	
	created_on DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the current record in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (role_permission_id)
)
COMMENT ''
ENGINE = InnoDB;
-- -----------------------------------------------------
