-- script that creates a table users with follwing fields
-- id, email, name
CREATE TABLE IF NOT EXISTS USERS (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    EMAIL VARCHAR(255) NOT NULL UNIQUE,
    NAME VARCHAR(255)
)
