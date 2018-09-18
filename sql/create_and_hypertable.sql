CREATE TABLE apm (
  time        TIMESTAMPTZ       NOT NULL,
  kind        TEXT              NOT NULL  -- k for keyboard, m for mouse
);
SELECT create_hypertable('apm', 'time');
