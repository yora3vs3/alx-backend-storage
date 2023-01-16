-- SQL script that creates a stored procedure ComputeAverageWeightedScoreForUser
-- That computes and store the average weighted score for a student

DROP PROCEDURE IF EXISTS COMPUTEAVERAGEWEIGHTEDSCOREFORUSER;

DELIMITER |

CREATE PROCEDURE COMPUTEAVERAGEWEIGHTEDSCOREFORUSER (
    IN USER_ID INT
)
BEGIN
    UPDATE USERS
    SET
        AVERAGE_SCORE=(
            SELECT AVG(SCORE) FROM CORRECTIONS WHERE CORRECTIONS.USER_ID=USER_ID
        )
    WHERE
        ID=USER_ID;
END;
|
