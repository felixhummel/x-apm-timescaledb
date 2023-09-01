SELECT
    time_bucket('1 minute', time) bucket,
    count(kind)
FROM apm
GROUP BY bucket
ORDER BY bucket
LIMIT 20
;
