SELECT *
  FROM (
    SELECT *
      FROM apm
      ORDER BY time DESC
      LIMIT 20
  ) x
ORDER BY time ASC
