-- script that ranks country origins of bands, ordered
-- by the number of (non-unique) fans
SELECT
    ORIGIN,
    SUM(FANS) AS NB_FANS
FROM
    METAL_BANDS
GROUP BY
    ORIGIN
ORDER BY
    NB_FANS DESC;
