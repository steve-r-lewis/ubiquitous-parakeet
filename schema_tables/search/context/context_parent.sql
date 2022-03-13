-- -----------------------------------------------------
-- TABLE: bookmark_context_parent
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_context_parent;

CREATE OR REPLACE TABLE bookmark_context_parent (
	bookmark_context_parent_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_context_parent\' on field \'bookmark_context_parent_id\'',

	context_parent_uuid TEXT NULL DEFAULT null COMMENT 'Machine/program generated Unique User IDentifier string',

	user_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'user\' on PRIMARY KEY field \'user_id\'',

	bookmark_context_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'bookmark_context\' on PRIMARY KEY field \'bookmark_context_id\'',
	bookmark_context_parent BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'bookmark_context\' on PRIMARY KEY field \'bookmark_context_id\'',

	create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_context_parent_id),

	CONSTRAINT UNIQUE INDEX context_parent_uuid_unique_index (context_parent_uuid ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX user_id_unique_index2 (user_id ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX bookmark_context_id_unique_index2 (bookmark_context_id ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX bookmark_context_parent_unique_index (bookmark_context_parent ASC) VISIBLE,

	CONSTRAINT bookmark_context_parent_user_user_id_fk
		FOREIGN KEY (user_id) REFERENCES user (user_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	CONSTRAINT bookmark_context_parent_bookmark_context_bookmark_context_id_fk1
		FOREIGN KEY (bookmark_context_id) REFERENCES bookmark_context (bookmark_context_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	CONSTRAINT bookmark_context_parent_bookmark_context_bookmark_context_id_fk2
		FOREIGN KEY (bookmark_context_parent) REFERENCES bookmark_context (bookmark_context_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)
COMMENT 'TABLE \'bookmark_context_parent\' that stores the details of a given context parent context.'
ENGINE = InnoDB;
-- -----------------------------------------------------
