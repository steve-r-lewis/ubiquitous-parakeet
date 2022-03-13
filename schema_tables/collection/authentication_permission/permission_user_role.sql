-- -----------------------------------------------------
-- TABLE: permission_user_role
-- ACTION: CREATE OR REPLACE
-- -----------------------------------------------------
-- NOTES:
-- Notes for development
-- -----------------------------------------------------
DROP TABLE IF EXISTS permission_user_role;

CREATE TABLE IF NOT EXISTS permission_user_role (
	permission_user_role_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY KEY for \'permission_user_role\'',
 user_id BIGINT NOT NULL COMMENT 'FOREIGN KEY referencing the table \'user\' on PRIMARY KEY field \'user_id\'',
	
	
 Role_idrole INT NOT NULL,
	
	record_create_date DATE NOT NULL DEFAULT curdate() COMMENT 'DATE timestamp for the tuple create date in the format YYYY-MM-DD',
	record_create_time TIME NOT NULL DEFAULT curdate() COMMENT 'TIME timestamp for the tuple create time in the format HH:MM:SS.ffffff',
	record_create_datetime DATETIME NOT NULL DEFAULT current_timestamp() COMMENT 'DATETIME timestamp for the tuple create datetime in the format YYYY-MM-DD HH:MM:SS.ffffff',
 
 PRIMARY KEY (permission_user_role_id, user_id, Role_idrole),
 
 INDEX fk_user_role_user1_idx (user_id ASC) VISIBLE,
 INDEX fk_UserRole_Role1_idx (Role_idrole ASC) VISIBLE,
 
 CONSTRAINT fk_user_role_user1
 FOREIGN KEY (user_id)
 REFERENCES user (user_id)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION,
	
 CONSTRAINT fk_UserRole_Role1
 FOREIGN KEY (Role_idrole)
 REFERENCES role (idrole)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
