-- Script that creates a stored procedure ComputeAverageScoreForUser
-- that computes and store the average score for a student
DROP PROCEDURE IF EXISTS COMPUTEAVERAGESCOREFORUSER;

DELIMITER $$;

CREATE PROCEDURE COMPUTEAVERAGESCOREFORUSER(
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
$$ DELIMITER;
