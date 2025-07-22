SHOW TABLES
FROM combined;

SELECT *
FROM combine_clean_data;


SELECT channeltitle, AVG(view_count) AS avg_views
FROM combine_clean_data
GROUP BY channeltitle
ORDER BY avg_views DESC;

UPDATE combine_clean_data
SET title = REPLACE(REPLACE(REPLACE(title, 'Ã', ''), 'Â', ''), '¤', '')
WHERE title LIKE '%Ã%' OR title LIKE '%Â%' OR title LIKE '%¤%';

SELECT *
FROM combine_clean_data;