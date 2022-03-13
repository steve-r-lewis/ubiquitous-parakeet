-- -----------------------------------------------------
-- TABLE: bookmark_url_parent
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_url_parent;

CREATE OR REPLACE TABLE bookmark_url_parent (
	bookmark_url_parent_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_url_parent\' on field \'bookmark_url_parent_id\'',

	user_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'user\' on PRIMARY KEY field \'user_id\'',

	bookmark_url_parent_uuid TEXT NULL DEFAULT null COMMENT 'Machine/program generated Unique User IDentifier string',

	bookmark_url_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'bookmark_url\' on PRIMARY KEY field \'bookmark_url_id\'',
	parent_context_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'bookmark_context\' on PRIMARY KEY field \'bookmark_context_id\'',
	parent_tree_id BIGINT UNSIGNED NOT NULL COMMENT 'FOREIGN KEY referencing the table \'bookmark_tree\' on PRIMARY KEY field \'bookmark_tree_id\'',

	bookmark_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_url_parent_id),

	CONSTRAINT UNIQUE INDEX bookmark_url_parent_uuid_unique_index (bookmark_url_parent_uuid  ASC) VISIBLE,

	CONSTRAINT UNIQUE INDEX bookmark_url_id_unique_index (bookmark_url_id ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX parent_context_id_unique_index (parent_context_id ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX parent_tree_id_unique_index (parent_tree_id ASC) VISIBLE,

	CONSTRAINT bookmark_url_parent_user_user_id_fk
		FOREIGN KEY (bookmark_url_id) REFERENCES bookmark_url (bookmark_url_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	CONSTRAINT bookmark_url_parent_bookmark_url_bookmark_url_id_fk
		FOREIGN KEY (bookmark_url_id) REFERENCES bookmark_url (bookmark_url_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	CONSTRAINT bookmark_url_parent_parent_context_parent_context_id_fk
		FOREIGN KEY (parent_context_id) REFERENCES bookmark_context (bookmark_context_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	CONSTRAINT bookmark_url_parent_parent_tree_parent_tree_id_fk
		FOREIGN KEY (parent_tree_id) REFERENCES bookmark_tree (bookmark_tree_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
)
COMMENT 'TABLE \'bookmark_url\' that stores the details of a given imported URL link.'
ENGINE = InnoDB;
-- -----------------------------------------------------
