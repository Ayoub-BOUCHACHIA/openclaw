# Contributing to OpenClaw Docker Setup

We welcome contributions to improve this deployment setup!

## How to Contribute

1. **Bug Reports & Features**: Open an issue to discuss your ideas.
2. **Configuration Profiles**: If you have an optimized `openclaw.json` for a specific use case, submit a PR with a new template file (e.g., `openclaw.json.mypattern.template`).
3. **Documentation**: Help us improve the README or guides.

## Pull Request Process

1. Fork the repository.
2. Create a feature branch.
3. Test your changes locally using `make run` and `make logs-live`.
4. Ensure your configuration changes are sanitized (no API keys).
5. Submit your PR!

## Development Setup

- Clone the repo.
- Run `make setup`.
- Use `make run` to start the default dev environment.
- Use `make shell` to inspect the container.

Thank you for helping us make OpenClaw easier to deploy!
