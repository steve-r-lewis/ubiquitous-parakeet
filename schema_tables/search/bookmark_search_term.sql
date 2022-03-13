-- -----------------------------------------------------
-- TABLE: bookmark_search_term
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_search_term;

CREATE OR REPLACE TABLE bookmark_search_term (
	bookmark_search_term_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_search_term\' on field \'bookmark_search_term_id\'',

	search_term TINYTEXT NOT NULL DEFAULT 'Universal' COMMENT 'A string providing a specific search term',
	search_term_description TEXT NULL DEFAULT null COMMENT 'A JSON formatted string listing all search terms',
	is_applied_to JSON NULL DEFAULT null COMMENT 'A JSON formatted string giving all search term associations for URL, URL Context and URL Context Tree',

	create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_search_term_id),

	CONSTRAINT UNIQUE INDEX bookmark_search_term_search_term_unique_index (search_term ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX bookmark_search_term_is_applied_to_unique_index (is_applied_to ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX bookmark_search_term_create_datetime_unique_index (create_datetime ASC) VISIBLE
)
COMMENT 'TABLE \'bookmark_search_term\' stores search terms for a given URL, URL context, or tree of URL contexts.'
ENGINE = InnoDB;
-- -----------------------------------------------------