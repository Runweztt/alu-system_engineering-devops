# Web Stack Debugging 1

This project focuses on debugging an Nginx web server that is not listening
on the standard HTTP port.

## Task 0

The active Nginx configuration is changed from port 8080 to port 80. Nginx is
then restarted so that it listens on port 80 of the server's IPv4 interfaces.

## Task 1

The short solution changes the Nginx listening port, starts Nginx directly,
and removes the standard PID file so that the init service reports Nginx as
not running while the web server continues serving HTTP traffic.

## Files

| File | Description |
| --- | --- |
| `0-nginx_likes_port_80` | Configures Nginx to listen on port 80. |
| `1-debugging_made_short` | Provides the advanced solution in five lines. |
