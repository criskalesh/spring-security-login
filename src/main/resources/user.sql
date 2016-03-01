CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  PASSWORD VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
PRIMARY KEY (username));

CREATE TABLE user_roles (
  user_role_id INT(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(45) NOT NULL,
  role VARCHAR(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));
  

INSERT INTO users(username,PASSWORD,enabled) VALUES ('krishna','123456', TRUE);
INSERT INTO users(username,PASSWORD,enabled) VALUES ('amjith','123456', TRUE);

INSERT INTO user_roles (username, role) VALUES ('krishna', 'ROLE_USER');
INSERT INTO user_roles (username, role) VALUES ('amjith', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('amjith', 'ROLE_USER');