-- -----------------------------------------------------
-- TABLE: image_reference
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
CREATE OR REPLACE TABLE image_reference (
	image_reference_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'image_reference\' on field \'image_reference_id\'',
	
	created_on DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the current record in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (image_reference_id)
)
COMMENT ''
ENGINE = InnoDB;
-- -----------------------------------------------------
