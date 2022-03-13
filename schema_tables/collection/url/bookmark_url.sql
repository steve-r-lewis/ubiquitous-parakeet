-- -----------------------------------------------------
-- TABLE: bookmark_url
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_url;

CREATE OR REPLACE TABLE bookmark_url (
	bookmark_url_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_url\' on field \'bookmark_url_id\'',

	import_file_line_number INT NULL COMMENT 'For any given imported record a line number from the file is stored here',
	bookmark_uuid CHAR(36) NOT NULL COMMENT 'Unique identifier generated for the record by the import process',

	bookmark_text TEXT NULL DEFAULT null COMMENT 'This is the URL address as imported',
	bookmark_add_date DATETIME NULL DEFAULT null COMMENT 'This is the timestamp as imported from the exported bookmark data and records the datetime the record was created',
	bookmark_icon TEXT NULL DEFAULT null COMMENT 'This is the URL ICON text as imported',
	bookmark_label TEXT NULL DEFAULT null COMMENT 'This is the URL title text for the imported URL record',

	bookmark_description TEXT NULL DEFAULT null COMMENT 'This is the user defined description for the URL record.',

	create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_url_id),

	CONSTRAINT UNIQUE INDEX bookmark_uuid_unique_index (bookmark_uuid ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX bookmark_text_unique_index (bookmark_text ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX create_datetime_unique_index (create_datetime ASC) VISIBLE
)
COMMENT 'TABLE \'bookmark_url\' that stores the details of a given imported URL link.'
ENGINE = InnoDB;
-- -----------------------------------------------------
