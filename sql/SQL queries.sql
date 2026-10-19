SELECT 
    COUNT(*) AS total_startups,
    COUNT(funding_total_numeric) AS startups_with_funding_data,
    SUM(CONVERT(funding_total_numeric, DECIMAL(20))) AS total_recorded_funding,
    ROUND(AVG(CONVERT(funding_total_numeric, DECIMAL(20)))) AS average_recorded_funding,
    COUNT(*) - COUNT(funding_total_numeric) AS startups_without_funding_data
FROM startups;

SELECT 
	country_code,
    COUNT(*) AS total_startups,
    COUNT(funding_total_numeric) AS startups_with_funding_data,
    SUM(CAST(funding_total_numeric AS DECIMAL(20))) AS total_funding,
    ROUND(AVG(CAST(funding_total_numeric AS DECIMAL(20)))) AS average_funding
FROM startups
WHERE country_code IS NOT NULL AND country_code != ''
GROUP BY country_code
HAVING total_startups >= 10
ORDER BY total_funding DESC 
LIMIT 10;

SELECT 
	market,
    COUNT(*) AS total_startups,
    COUNT(NULLIF(TRIM(funding_total_numeric), '')) AS startups_with_funding_data,
    SUM(CAST(funding_total_numeric AS DECIMAL(20))) AS total_funding,
    ROUND(AVG(CAST(funding_total_numeric AS DECIMAL(20)))	) AS average_funding
FROM startups
WHERE market IS NOT NULL AND market != ''
GROUP BY market
HAVING total_startups >= 10
ORDER BY total_funding DESC
LIMIT 10;

SELECT 
	status,
    COUNT(*) AS total_startups,
    COUNT(NULLIF(TRIM(funding_total_numeric), '')) AS startups_with_funding_data,
    SUM(CAST(NULLIF(TRIM(funding_total_numeric), '') AS DECIMAL(20))) AS total_funding,
    ROUND(AVG(CAST(NULLIF(TRIM(funding_total_numeric), '') AS DECIMAL(20)))) AS average_funding
FROM startups
WHERE status IS NOT NULL AND status != ''
GROUP BY status
ORDER BY total_funding DESC;

SELECT
	YEAR(STR_TO_DATE(first_funding_at_parsed, '%Y-%m-%d'))funding_year,
    COUNT(*) AS startups_funded,
    COUNT(NULLIF(TRIM(funding_total_numeric), '')) AS startups_with_funding_data,
	SUM(CAST(NULLIF(TRIM(funding_total_numeric), '') AS DECIMAL(20))) AS total_funding,
    ROUND(AVG(CAST(NULLIF(TRIM(funding_total_numeric), '') AS DECIMAL(20)))) AS average_funding
FROM startups
WHERE first_funding_at_parsed IS NOT NULL AND first_funding_at_parsed != ''
GROUP BY funding_year
HAVING startups_funded >= 10
ORDER BY funding_year ASC;

SELECT 
	name,
    market,
    country_code,
    status,
    funding_rounds,
    CAST(NULLIF(TRIM(funding_total_numeric), '') AS DECIMAL(20)) AS funding_total_numeric
FROM startups
WHERE name IS NOT NULL 
	AND name != ''
    AND NULLIF(TRIM(funding_total_numeric), '') IS NOT NULL
ORDER BY funding_total_numeric DESC
LIMIT 10;