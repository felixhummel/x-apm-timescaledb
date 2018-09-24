Inspired by StarCraft 2 Action per Minute (APM) counters [1].


# Run
```
cat <<EOF > .env
PGPASSWORD=password
PGPORT=25432
EOF

docker-compose up -d
./bin/psql < sql/create_and_hypertable.sql

make tmux
# detach, then
make tail
```

# Notes
- TimescaleDB setup
  - https://docs.timescale.com/v1.0/getting-started/setup
  - https://docs.timescale.com/v1.0/getting-started/configuring (ignored for now)


[1] See the purple APM counter here: https://www.youtube.com/watch?v=kc_WFTDwWUg&t=1843s
