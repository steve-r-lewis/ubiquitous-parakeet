-- -----------------------------------------------------
-- TABLE: bookmark_search_term_url
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_search_term_url;

CREATE OR REPLACE TABLE bookmark_search_term_url (
	bookmark_search_term_url_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_search_term_url\' on field \'bookmark_search_term_url_id\'',

	bookmark_search_term_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'bookmark_search_term_id\'',
	bookmark_url_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'bookmark_url\' on PRIMARY KEY field \'bookmark_url_id\'',

	create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_search_term_url_id),

	CONSTRAINT search_term_url_search_term_search_term_id_fk
		FOREIGN KEY (bookmark_search_term_id) REFERENCES bookmark_search_term (bookmark_search_term_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	CONSTRAINT search_term_url_url_url_id_fk
		FOREIGN KEY (bookmark_url_id) REFERENCES bookmark_url (bookmark_url_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)
COMMENT 'TABLE \'bookmark_search_term_url\' stores search terms for a given URL.'
ENGINE = InnoDB;
-- -----------------------------------------------------