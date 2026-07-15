# Web Stack Debugging 4

This project focuses on diagnosing and correcting an Nginx server that fails
under concurrent traffic.

## Problem

The Nginx service is configured with an extremely low open file limit of 15.

Network sockets, log files, served files, and client connections consume file
descriptors. When ApacheBench sends 2000 requests with 100 concurrent
connections, Nginx reaches this limit and returns failed responses.

## Solution

The Puppet manifest increases the Nginx open file limit from 15 to 4096 and
restarts the Nginx service.

## File

| File | Description |
| --- | --- |
| `0-the_sky_is_the_limit_not.pp` | Raises the Nginx open file limit and restarts Nginx. |

## Testing

The server is tested with ApacheBench using 2000 total requests and 100
concurrent requests.

After the fix, the benchmark should report zero failed requests.

## Concepts

This project covers Nginx performance, ApacheBench, concurrent requests,
file descriptors, service limits, server logs, Puppet, and idempotent
configuration management.
