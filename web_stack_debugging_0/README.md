# Web Stack Debugging 0

This project introduces web stack debugging using Docker and Apache.

## Objective

The provided Docker container has a broken web stack. The goal is to inspect
the container, identify why the web server is not responding, and create a
Bash script that restores the expected behavior.

After the fix, an HTTP request to the root page must return:

`Hello Holberton`

## File

| File | Description |
| ---- | ----------- |
| `0-give_me_a_page` | Creates the required webpage and starts Apache. |

## Concepts

- Docker containers
- Apache web server
- HTTP requests
- Service management
- Web stack debugging
- Bash automation
