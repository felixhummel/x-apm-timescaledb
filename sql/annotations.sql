CREATE TABLE annotations (time timestamp, text text, tags text);
INSERT INTO annotations VALUES (
  now() - interval '15 minutes',
  'test annotation',
  'foo,bar,baz'
);
