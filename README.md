- https://docs.timescale.com/v1.0/getting-started/setup
- https://docs.timescale.com/v1.0/getting-started/configuring (ignored for now)

# Run
```
docker-compose up -d
cat sql/create_and_hypertable.sql | ./bin/psql

make continuous_loader
# another shell
make tail
```
