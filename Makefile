MAKEFLAGS += --always-make

tail:
	cat sql/tail.sql | psql

per_minute:
	cat sql/per_minute.sql | psql
