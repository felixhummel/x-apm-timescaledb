SELECT
    $__timeGroup("t", '1m', 0),
    -- time_bucket('1 minute', time) as time,
    sum(val) as value,
    'apm' as metric
  FROM (
    select time as t, 1 as val from apm
  ) x
  WHERE $__timeFilter("t")
  GROUP BY time
  ORDER BY time;