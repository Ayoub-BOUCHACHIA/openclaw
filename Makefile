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
	@if [ ! -f ./openclaw_data/openclaw.json ]; then \
		cp openclaw.json.template ./openclaw_data/openclaw.json; \
		echo "Created default openclaw.json from template."; \
	fi
