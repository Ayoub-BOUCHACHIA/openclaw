# Security Policy

OpenClaw is a powerful tool with extensive capabilities. When exposing it to a network, security is paramount.

## Core Guidelines

1. **Never Expose Port 18789 Directly**: The dashboard and gateway are unauthenticated by default in this setup. Exposing this port to the public internet without a secure tunnel or reverse proxy is a major security risk.
2. **Use HTTPS Tunnels**: For remote access, we recommend using [Cloudflare Tunnel](https://www.cloudflare.com/products/tunnel/) or [Localtonet]. Always ensure the connection is encrypted.
3. **API Key Security**: Keep your `.env` file secure. Never commit it to a repository.
4. **Permissions**: The `openclaw_data` directory contains sensitive configuration and session data. Ensure its permissions are restrictive (`700` or `755`).

## Production vs Development

| Feature | Development (Host Mode) | Production (Remote/Tunnel) |
|---------|-------------------------|---------------------------|
| **Network** | `network_mode: host` | `bridge` (Explicit ports) |
| **SSL** | Bypassed (NODE_TLS...) | Mandatory (Via Tunnel/Proxy) |
| **Auth** | Bypass (Optional) | Required |
| **Access** | `localhost` only | Encrypted Tunnel |

## Reporting a Vulnerability

If you find a security issue in this *deployment setup*, please open an issue on the repository. For vulnerabilities in the *OpenClaw application* itself, refer to the [official OpenClaw repository](https://github.com/openclaw/gateway-server).
