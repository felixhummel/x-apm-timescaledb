Inspired by StarCraft 2 Action per Minute (APM) counters [^1].

![Screenshot](screenshot.png)


# Run
```
sudo apt-get install -y xinput
docker-compose up -d
python -mwebbrowser https://grafana.apm.x/
```


# Notes
- TimescaleDB setup
  - https://docs.timescale.com/v1.0/getting-started/setup
  - https://docs.timescale.com/v1.0/getting-started/configuring (ignored for now)
- Grafana
  - http://docs.grafana.org/features/datasources/postgres/#time-series-queries


# Development
```
./env/dev/generate_env_file.sh > .env
set -o allexport; source .env; set +o allexport
psql
```



# Backup Grafana Dashboards
```
pip install -U hukudo
./env/dev/generate_grafana_env_file.sh > .grafana.env
hukudo -linfo grafana -c .grafana.env dashboard export grafana/dashboards/
```


[^1]: See the purple APM counter here: https://www.youtube.com/watch?v=kc_WFTDwWUg&t=1843s
