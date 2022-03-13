-- -----------------------------------------------------
-- TABLE: template
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
CREATE OR REPLACE TABLE template (
	template_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'template\' on field \'template_id\'',
	
	create_on_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the current record in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (template_id)
)
COMMENT ''
ENGINE = InnoDB;
-- -----------------------------------------------------
