CREATE DATABASE chat3;

USE chat;

-- CREATE TABLE messages (
--    Describe your table here.
  
-- );

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

--
-- ---=== Exported from visualization program ===---
--
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
-- Contains the message objects in table form.
-- ---

/*DROP TABLE IF EXISTS `messages`;*/
    
CREATE TABLE 'messages' (
  'id' INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  'username' VARCHAR NULL DEFAULT NULL,
  'roomname' VARCHAR NULL DEFAULT NULL,
  'createdAt' TIMESTAMP NULL DEFAULT NULL,
  'changedAt' TIMESTAMP NULL DEFAULT NULL,
  'text' VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY ('id')
) COMMENT 'Contains the message objects in table form.';

-- ---
-- Table 'users'
-- This the table for assigning id''s to each user.
-- ---

DROP TABLE IF EXISTS 'users';
    
CREATE TABLE 'users' (
  'id' INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  'username' VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY ('id', 'username')
) COMMENT 'This the table for assigning id''s to each user.';

-- ---
-- Table 'rooms'
-- This the table for assigning id''s to each room.
-- ---

DROP TABLE IF EXISTS 'rooms';
    
CREATE TABLE 'rooms' (
  'id' INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  'roomnames' VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY ('id', 'roomnames')
) COMMENT 'This the table for assigning id''s to each room.';

-- ---
-- Table 'date'
-- This is the table for assigning id''s to each timestamp.
-- ---

DROP TABLE IF EXISTS 'date';
    
CREATE TABLE 'date' (
  'id' INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  'createdAt' TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY ('id', 'createdAt')
) COMMENT 'This is the table for assigning id''s to each timestamp.';

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE 'messages' ADD FOREIGN KEY (username) REFERENCES 'users' ('id');
ALTER TABLE 'messages' ADD FOREIGN KEY (roomname) REFERENCES 'rooms' ('id');
ALTER TABLE 'messages' ADD FOREIGN KEY (createdAt) REFERENCES 'date' ('id');

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `date` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`username`,`roomname`,`createdAt`,`changedAt`,`text`) VALUES
-- ('','','','','','');
-- INSERT INTO `users` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `rooms` (`id`,`roomnames`) VALUES
-- ('','');
-- INSERT INTO `date` (`id`,`createdAt`) VALUES
-- ('','');