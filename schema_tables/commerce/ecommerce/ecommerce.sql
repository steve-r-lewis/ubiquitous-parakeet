-- -----------------------------------------------------
-- TABLE: template
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
CREATE OR REPLACE TABLE template (
	template_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'template\' on field \'template_id\'',

	

	created_on DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the current record in the format YYYY-MM-DD HH:MM:SS.ffffff automatically added at the point the record was created',

	record_owner BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'user\' on PRIMARY KEY field \'user_id\'',
	record_group BIGINT UNSIGNED NOT NULL COMMENT '',
	record_permission BIGINT UNSIGNED NOT NULL COMMENT '',

	CONSTRAINT PRIMARY KEY (template_id)
)
COMMENT ''
ENGINE = InnoDB;
-- -----------------------------------------------------
