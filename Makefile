SHELL := /bin/bash

.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@echo "  make up           Start local services"
	@echo "  make down         Stop local services"
	@echo "  make logs         Show service logs"
	@echo "  make validate     Run repo validation checks"
	@echo "  make clean        Remove local data"

up:
	docker compose up -d --build

stop:
	docker compose stop

down:
	docker compose down

logs:
	docker compose logs -f --tail=200

validate:
	bash scripts/validate.sh

clean:
	docker compose down -v --remove-orphans
	@rm -rf keycloak-data postgres-data

.PHONY: help up stop down logs validate clean
