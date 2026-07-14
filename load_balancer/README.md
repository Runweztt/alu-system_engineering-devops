# Load Balancer

This project improves the availability and capacity of a web infrastructure
by adding a second Nginx web server and placing both servers behind an
HAProxy load balancer.

## Infrastructure

| Server | Role | IP address |
| ------ | ---- | ---------- |
| `7139-web-01` | First Nginx web server | `44.201.123.60` |
| `7139-web-02` | Second Nginx web server | `18.233.154.155` |
| `7139-lb-01` | HAProxy load balancer | `54.237.154.102` |

HAProxy distributes HTTP requests between the two web servers using the
round-robin algorithm.

Each Nginx server returns an `X-Served-By` HTTP response header containing
its hostname. This makes it possible to identify which server handled each
request.

## Files

| File | Description |
| ---- | ----------- |
| `0-custom_http_response_header` | Configures Nginx with the `X-Served-By` response header. |
| `1-install_load_balancer` | Installs and configures HAProxy with round-robin balancing. |

## Concepts

- Load balancing
- High availability
- Redundancy
- Round-robin traffic distribution
- HTTP response headers
- Nginx
- HAProxy
- Infrastructure automation
