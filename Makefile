.PHONY: psql
psql:
	docker-compose exec db psql postgres postgres

bash:
	docker-compose exec db bash

.PHONY: tmux
tmux:
	tmux new-session -A -s apm make continuous_loader

.PHONY: continuous_loader
continuous_loader:
	sudo ./x-action-log | ./xinput2insert.sh | tee | ./load.sh

.PHONY: tail
tail:
	cat sql/tail.sql | ./bin/psql

.PHONY: per_minute
per_minute:
	cat sql/per_minute.sql | ./bin/psql
