-- Script that creates a view need_meeting that lists all students
-- that have a score under 80 (strict) and no last_meeting or more than 1 month.
CREATE VIEW NEED_MEETING AS
    SELECT
        NAME
    FROM
        STUDENTS
    WHERE
        SCORE < 80
        AND (LAST_MEETING IS NULL
        OR LAST_MEETING < DATE(CURDATE() - INTERVAL 1 MONTH));
