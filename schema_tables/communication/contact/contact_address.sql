-- -----------------------------------------------------
-- TABLE: address_contact
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS ;

CREATE OR REPLACE TABLE address_contact (
	address_contact_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'address_contact\' on field \'address_contact_id\'',
	
	created_on DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'Create datatime timestamp for the current record in the format YYYY-MM-DD HH:MM:SS.ffffff',
	
	CONSTRAINT PRIMARY KEY (address_contact_id)
)
COMMENT 'CommentHere'
ENGINE = InnoDB;
-- -----------------------------------------------------
