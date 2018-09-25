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


# Systemd
- https://superuser.com/a/1128905
- https://naftuli.wtf/2017/12/28/systemd-user-environment/

```
mkdir -p ~/.config/systemd/user/
cp etc/user-graphical-login.target ~/.config/systemd/user/user-graphical-login.target
systemctl --user daemon-reload

cp etc/import-x-env ~/.local/bin/import-x-env
chmod +x ~/.local/bin/import-x-env
xfce4-session-settings  # add it to Application Autostart
```

debug:
```
systemctl --user show-environment | grep DISPLAY
systemctl --user status user-graphical-login.target
systemctl --user list-dependencies user-graphical-login.target
```

The actual service:
```
cat <<EOF > ~/.config/systemd/user/x-apm.service
[Unit]
Description=log actions per minute (APM) for your X session
PartOf=user-graphical-login.target

[Service]
WorkingDirectory=$PWD
ExecStart=$PWD/bin/run

[Install]
WantedBy=user-graphical-login.target
EOF

systemctl --user daemon-reload
systemctl --user enable x-apm
```

debug:
```
systemctl --user status x-apm.service
```
