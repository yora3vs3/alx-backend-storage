-- SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
-- Column names must be: band_name and lifespan (in years)
-- use attributes formed and split for computing the lifespan

SELECT
    BAND_NAME,
    COALESCE(SPLIT,
    2020) - FORMED AS LIFESPAN
FROM
    METAL_BANDS
WHERE
    STYLE LIKE '%Glam rock%'
ORDER BY
    LIFESPAN DESC;
