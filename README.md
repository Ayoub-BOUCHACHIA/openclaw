# OpenClaw Docker Setup

This repository contains a pre-configured OpenClaw setup ready for development. It features host networking for easy access and optimized configuration for Moonshot AI (Kimi).

## Prerequisites

- Docker and Docker Compose
- A Moonshot AI API Key (or other supported provider)

## Quick Start

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd openclaw
   ```

2. **Set up your API Key:**
   Create or edit the `docker-compose.yml` file and provide your `MOONSHOT_API_KEY`.

3. **Start the application:**
   Using the provided `Makefile`:
   ```bash
   make run
   ```
   Or using Docker Compose:
   ```bash
   docker compose up -d
   ```

## Connectivity & Access

Once running, the application is accessible on your host machine at:

- **Dashboard (Control UI):** [http://localhost:18789](http://localhost:18789)
- **Browser Control (CDP Relay):** `http://localhost:18791`
- **Gateway (WebSocket):** `ws://localhost:18789`

> [!NOTE]
> This setup uses `network_mode: host` to bypass container networking limitations. Authentication is disabled by default for easier local development.

## Makefile Commands

- `make run`: Start the container in detached mode.
- `make stop`: Stop and remove the container.
- `make restart`: Restart the container.
- `make logs`: View container logs.
- `make clean`: remove the local data volume (CAUTION: deletes all sessions/configs).

## Configuration

The core configuration is stored in `openclaw_data/openclaw.json`. 
A template is provided in `openclaw.json.template`.
