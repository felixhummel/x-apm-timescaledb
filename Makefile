.PHONY: psql
psql:
	docker-compose exec db psql postgres postgres

