-- -----------------------------------------------------
-- TABLE: permission_asset_role
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS permission_asset_role;

CREATE TABLE IF NOT EXISTS permission_asset_role (
	permission_asset_role_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for \'permission_asset_role\'',
	
 page VARCHAR(30) NOT NULL,
 create BIT NOT NULL,
 read BIT NOT NULL,
 update BIT NOT NULL,
 delete BIT NOT NULL,
 Role_idrole INT NOT NULL,
	
	record_create_date DATE NOT NULL DEFAULT curdate() COMMENT 'DATE timestamp for the tuple create date in the format YYYY-MM-DD',
	record_create_time TIME NOT NULL DEFAULT curdate() COMMENT 'TIME timestamp for the tuple create time in the format HH:MM:SS.ffffff',
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
 
 PRIMARY KEY (permission_asset_role_id, Role_idrole),
 
 INDEX fk_PageRoleAccess_Role1_idx (Role_idrole ASC) VISIBLE,
 
 CONSTRAINT fk_PageRoleAccess_Role1
 FOREIGN KEY (Role_idrole)
 REFERENCES Role (idrole)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION
)
COMMENT 'CommentHere'
ENGINE = InnoDB;
-- -----------------------------------------------------
