-- -----------------------------------------------------
-- TABLE: bookmark_context
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Example Google Bookmarks context listing <H3 ADD_DATE="1641490290" LAST_MODIFIED="1641490306">Legislation</H3>
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_context;

CREATE OR REPLACE TABLE bookmark_context (
	bookmark_context_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_context_id\'',

	import_file_line_number INT NULL COMMENT 'For any given imported record a line number from the file is stored here',

	context_uuid TEXT NULL DEFAULT null COMMENT 'Machine/program generated Unique User IDentifier string',

	context_label TEXT NULL DEFAULT null COMMENT 'Text label for the URL context record',
	context_add_datetime TEXT NULL DEFAULT null COMMENT 'The added datetime from the bookmarks import',
	context_modified_datetime DATETIME NULL DEFAULT null COMMENT 'The modified datetime from the bookmarks import',

	context_description TEXT NULL DEFAULT null COMMENT 'This is the user defined description for the URL context record.',
	
	create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_context_id)
)
COMMENT 'Table to store raw URL context tree node records'
ENGINE = InnoDB;
-- -----------------------------------------------------
