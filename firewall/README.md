# Firewall

This project configures a host based firewall using UFW.

## Objective

The firewall denies all incoming network traffic except the services that
must remain publicly accessible.

## Allowed ports

| Port | Protocol | Purpose |
| ---- | -------- | ------- |
| `22` | TCP | SSH remote administration |
| `80` | TCP | HTTP web traffic |
| `443` | TCP | HTTPS encrypted web traffic |

All other incoming connections are blocked. Outgoing traffic remains allowed.

## File

| File | Description |
| ---- | ----------- |
| `0-block_all_incoming_traffic_but` | Installs and configures UFW with the required firewall rules. |

## Important safety note

SSH port 22 must be allowed before UFW is enabled. Otherwise, remote access
to the server may be lost.
