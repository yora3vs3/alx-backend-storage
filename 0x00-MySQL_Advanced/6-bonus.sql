-- Script that creates a stored procedure AddBonus
-- that adds a new correction for a student.
DELIMITER $$;

CREATE PROCEDURE ADDBONUS(
    IN USER_ID INTEGER,
    IN PROJECT_NAME VARCHAR(255),
    IN SCORE INTEGER
)
BEGIN
    IF NOT EXISTS(
        SELECT
            NAME
        FROM
            PROJECTS
        WHERE
            NAME=PROJECT_NAME
    ) THEN
        INSERT INTO PROJECTS (
            NAME
        ) VALUES (
            PROJECT_NAME
        );
    END IF;
    INSERT INTO CORRECTIONS (
        USER_ID,
        PROJECT_ID,
        SCORE
    ) VALUES (
        USER_ID,
        (SELECT ID FROM PROJECTS WHERE NAME=PROJECT_NAME),
        SCORE
    );
END;
$$ DELIMITER;
