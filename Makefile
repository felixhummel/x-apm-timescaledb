.PHONY: psql
psql:
	docker-compose exec db psql postgres postgres

bash:
	docker-compose exec db bash

.PHONY: tmux
tmux:
	tmux new-session -A -s apm make run

.PHONY: run
run:
	./bin/run

.PHONY: tail
tail:
	cat sql/tail.sql | ./bin/psql

.PHONY: per_minute
per_minute:
	cat sql/per_minute.sql | ./bin/psql

.PHONY: nginx_reload
nginx_reload:
	docker-compose exec nginx sh -c 'nginx -t && nginx -s reload'
