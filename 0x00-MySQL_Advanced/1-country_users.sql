-- Script that creates a table users following these requirements:
-- id, email, name, country(enumeration of US, CO and TN)
CREATE TABLE IF NOT EXISTS USERS(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    EMAIL VARCHAR(255) NOT NULL UNIQUE,
    NAME VARCHAR(255),
    COUNTRY ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL
);
