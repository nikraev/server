CREATE DATABASE IF NOT EXISTS office CHARACTER SET utf8 COLLATE utf8_general_ci;

use office;

TRUNCATE users;

CREATE TABLE IF NOT EXISTS users(
  id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  telephone CHAR(12) NULL,
  mail VARCHAR(30) NULL
)ENGINE=InnoDB;

INSERT INTO users(telephone,mail) VALUES (1005, 'nkraev@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1006, 'dsorokin@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1007, 'anikulchin@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1008, 'rsa@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1009, 'kkutepov@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1010, 'rsa@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1011, 'support@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1012, 'ruslan@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1013, 'shadsky@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1014, 'ytakmazis@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1015, 'asolovyov@dtln.ru');
INSERT INTO users(telephone,mail) VALUES (1016, 'adarchenkov@dtln.ru');

