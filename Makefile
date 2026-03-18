# OpenClaw Makefile for easy management

.PHONY: run stop restart logs clean setup

run:
	docker compose up -d

stop:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

clean:
	docker compose down
	@echo "Deleting openclaw_data directory..."
	rm -rf ./openclaw_data
	@echo "Cleaned up."

setup:
	@echo "Initializing project structure..."
	mkdir -p ./openclaw_data
	@if [ ! -f .env ]; then \
		cp .env.template .env; \
		echo "Created .env from template. Please edit it with your API keys."; \
	fi
	@if [ ! -f ./openclaw_data/openclaw.json ]; then \
		cp openclaw.json.template ./openclaw_data/openclaw.json; \
		echo "Created default openclaw.json from template."; \
	fi

update:
	docker compose pull
	docker compose up -d

logs-live:
	docker compose logs -f --tail 100
