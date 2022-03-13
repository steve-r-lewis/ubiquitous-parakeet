-- -----------------------------------------------------
-- TABLE: geocode_country
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS geocode_country;

CREATE TABLE IF NOT EXISTS geocode_country (
	geocode_country_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Autoincrement primary key field of type bigint',
	
	iso_3166_2 CHAR(2) NOT NULL COMMENT 'CommentHere',
	iso_3166_3 CHAR(3) NOT NULL COMMENT 'CommentHere',
	iso_3166_numeric CHAR(3) NOT NULL COMMENT 'CommentHere',
	fips CHAR(3) NULL COMMENT 'CommentHere',
	geocode_country_name VARCHAR(50) NOT NULL COMMENT 'CommentHere',
	
	record_create_date DATE NOT NULL DEFAULT curdate() COMMENT 'DATE timestamp for the tuple create date in the format YYYY-MM-DD',
	record_create_time TIME NOT NULL DEFAULT curdate() COMMENT 'TIME timestamp for the tuple create time in the format HH:MM:SS.ffffff',
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
	
	CONSTRAINT PRIMARY KEY (geocode_country_id),
	
	CONSTRAINT UNIQUE INDEX iso_3166_2_unique_index (iso_3166_2 ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX iso_3166_3_unique_index (iso_3166_3 ASC) VISIBLE,
	CONSTRAINT UNIQUE INDEX iso_3166_numeric_unique_index (iso_3166_numeric ASC) VISIBLE,
	
	INDEX (fips)
)
COMMENT 'Country table containing all the country references'
ENGINE = InnoDB;
-- -----------------------------------------------------
