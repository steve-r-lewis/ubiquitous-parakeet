-- -----------------------------------------------------
-- TABLE: bookmark_search_term_context
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_search_term_context;

CREATE OR REPLACE TABLE bookmark_search_term_context (
	bookmark_search_term_context_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_search_term_context\' on field \'bookmark_search_term_context_id\'',

	bookmark_search_term_id BIGINT UNSIGNED NOT NULL COMMENT  'FOREIGN KEY referencing the table \'bookmark_search_term\' on PRIMARY KEY field \'bookmark_search_term_id\'',
	bookmark_context_id BIGINT UNSIGNED NULL DEFAULT null COMMENT 'FOREIGN KEY referencing the table \'bookmark_context\' on PRIMARY KEY field \'bookmark_context_id\'',

	create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_search_term_context_id),

	CONSTRAINT bm_search_term_context_bm_search_term_bm_search_term_id_fk
		FOREIGN KEY (bookmark_search_term_id) REFERENCES bookmark_search_term (bookmark_search_term_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	CONSTRAINT bm_search_term_context_bm_context_bm_context_id_fk
		FOREIGN KEY (bookmark_context_id) REFERENCES bookmark_context (bookmark_context_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)
COMMENT 'TABLE \'bookmark_search_term_context\' stores search terms for a given URL, URL context, or tree of URL contexts.'
ENGINE = InnoDB;
-- -----------------------------------------------------