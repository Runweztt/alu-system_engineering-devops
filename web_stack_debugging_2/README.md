# Web Stack Debugging 2

This project focuses on running commands as another Linux user and configuring
Nginx to run under a less privileged account.

## Task 0

The `0-iamsomeoneelse` script accepts a username and runs the `whoami`
command as that user.

## Task 1

The `1-run_nginx_as_nginx` script configures Nginx to run as the `nginx`
user and listen on port 8080 on all active IPv4 addresses.

## Files

| File | Description |
| --- | --- |
| `0-iamsomeoneelse` | Runs `whoami` as the supplied user. |
| `1-run_nginx_as_nginx` | Runs Nginx as the nginx user on port 8080. |

## Security

Running a web server under a less privileged account limits the damage that
could occur if the web server is compromised.
