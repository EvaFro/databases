CREATE DATABASE chat12;

USE chat12;

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
-- Table messages
-- Contains the message objects in table form.
-- ---

    
CREATE TABLE messages (
  id INTEGER(11) PRIMARY KEY,
  username INTEGER(11),
  roomname INTEGER(11),
  createdAt VARCHAR(255),
  changedAt VARCHAR(255),
  text VARCHAR(255)
);

-- ---
-- Table users
-- This the table for assigning ids to each user.
-- ---

    
CREATE TABLE users (
  id INTEGER(11) PRIMARY KEY,
  username VARCHAR(255)
); 

-- ---
-- Table rooms
-- This the table for assigning ids to each room.
-- ---

    
CREATE TABLE rooms (
  id INTEGER(11) PRIMARY KEY,
  roomnames VARCHAR(255)
); 
-- ---
-- Foreign Keys 
-- ---
ALTER TABLE messages ADD FOREIGN KEY (username) REFERENCES users (id);
ALTER TABLE messages ADD FOREIGN KEY (roomname) REFERENCES rooms (id);
-- ALTER TABLE messages ADD  (username) REFERENCES users (id);
-- ALTER TABLE messages ADD FOREIGN KEY (roomname) REFERENCES rooms (id);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE messages ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE users ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE rooms ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO messages (id,username,roomname,createdAt,changedAt,text) VALUES
-- (,,,,,);
-- INSERT INTO users (id,username) VALUES
-- (,);
-- INSERT INTO rooms (id,roomnames) VALUES
-- (,);
-- (,);