# OpenClaw Docker Setup 🚀

Optimized Docker deployment for [OpenClaw](https://github.com/openclaw/gateway-server) with Moonshot AI (Kimi) support. Ideal for local development, web automation, and remote-safe access.

---

## 🏗️ Architecture & Services

OpenClaw operates with several key services exposed on your host:

- **Dashboard / Control UI (Port 18789)**: The main interface for chat and agent management.
- **CDP Relay / Browser Control (Port 18791)**: The interface for agents to pilot the underlying browser.
- **Gateway (WebSocket)**: Handles core agent communication and skill execution.

---

## 🚀 Quick Start

1. **Clone & Setup:**
   ```bash
   git clone https://github.com/Ayoub-BOUCHACHIA/openclaw
   cd openclaw
   make setup
   ```
2. **Configure:** Edit `.env` and add your `MOONSHOT_API_KEY`.
3. **Run:** `make run`
4. **Access:** [http://localhost:18789](http://localhost:18789)

---

## 🛠️ Specialized Configuration Profiles

We provide pre-optimized templates for different use cases. To use one, copy it to `openclaw_data/openclaw.json`:

| Profile | File | Description |
|---------|------|-------------|
| **Dev / Debug** | `openclaw.json.kimi-dev.template` | Full power, native command execution enabled. |
| **Chat Assistant** | `openclaw.json.kimi-chat.template` | Safe, general-purpose chat focus. |
| **Browser Runner** | `openclaw.json.kimi-browser.template` | Optimized for web research and automation. |

---

## 💡 Use Cases

### 1. General-Purpose Assistant (Kimi k2.5)
- **Goal**: A fast, reliable personal chat assistant.
- **Steps**: Lancer `make run`, copier `kimi-chat` template, and start chatting.
- **Try it**: "Aide-moi à organiser ma journée" or "Explique-moi la relativité".

### 2. Automated Web Research Agent
- **Goal**: An agent that browses the web to find specific information.
- **Steps**: Lancer `make run`, copier `kimi-browser` template.
- **Try it**: "Trouve les 5 derniers articles sur l'IA générative et fais-moi un résumé".

---

## 🛡️ Security: Dev vs Production

| Feature | Development (Host Mode) | Production (Remote/Safe) |
|---------|-------------------------|--------------------------|
| **Deployment** | `make run` | `make run-remote` |
| **Network** | `network_mode: host` | `bridge` |
| **SSL** | Insecure (Bypassed) | **Secure (Mandatory)** |
| **Auth** | Bypassed | **Enabled** |

> [!CAUTION]
> **Safety First**: Never expose port 18789 directly to the internet. We recommend using a **Cloudflare Tunnel** or **Localtonet** for secure remote access.

---

## ⌨️ Makefile Shortcuts

- `make setup`: Initialize environment and data folders.
- `make run`: Run in development (host) mode.
- `make run-remote`: Run in bridge (port-mapping) mode.
- `make shell`: Open a bash shell inside the container.
- `make backup`: Create a timestamped backup of your data.
- `make update`: Pull latest images and restart.

---

## 🤝 Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md) for more details.

---

_Created with ❤️ for the OpenClaw community._
