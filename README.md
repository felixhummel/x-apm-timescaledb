Inspired by StarCraft 2 Action per Minute (APM) counters [1].

- https://docs.timescale.com/v1.0/getting-started/setup
- https://docs.timescale.com/v1.0/getting-started/configuring (ignored for now)

# Run
```
docker-compose up -d
cat sql/create_and_hypertable.sql | ./bin/psql

make tmux
# detach, then
make tail
```


[1] See the purple APM counter here: https://www.youtube.com/watch?v=kc_WFTDwWUg&t=1843s
