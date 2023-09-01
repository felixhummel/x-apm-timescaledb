CREATE TABLE bash (
  time        TIMESTAMPTZ       NOT NULL,
  num NUMERIC              NOT NULL,
  PRIMARY KEY (time, num)
);
SELECT create_hypertable('bash', 'time');
