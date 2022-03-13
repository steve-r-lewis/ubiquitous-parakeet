-- -----------------------------------------------------
-- TABLE: bookmark_tree
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS bookmark_tree;

CREATE OR REPLACE TABLE bookmark_tree (
	bookmark_tree_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for table \'bookmark_tree\'',

	bookmark_tree_uuid TEXT NULL DEFAULT null COMMENT 'Machine/program generated Unique User IDentifier string',

	context_tree_text mediumtext NOT NULL COMMENT '',
	context_tree_uuid mediumtext NOT NULL COMMENT '',

	create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',

	CONSTRAINT PRIMARY KEY (bookmark_tree_id),

	CONSTRAINT UNIQUE INDEX context_tree_text_unique_index (context_tree_text ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX context_tree_uuid_unique_index (context_tree_uuid ASC) VISIBLE
)
COMMENT 'Table to store all nested tree references for the YRL link context hierarchy'
ENGINE = InnoDB;
-- -----------------------------------------------------
