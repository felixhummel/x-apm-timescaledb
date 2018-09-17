.PHONY: psql
psql:
	docker-compose exec db psql postgres postgres

bash:
	docker-compose exec db bash

.PHONY: continuous_loader
continuous_loader:
	tail -f /var/log/x-userinput.log | ./xinput2insert.sh | tee | ./load.sh

.PHONY: tail
tail:
	echo 'select * FROM apm ORDER BY time DESC LIMIT 20' | ./bin/psql
