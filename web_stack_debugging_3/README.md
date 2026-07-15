# Web Stack Debugging 3

This project focuses on debugging a WordPress website running on a LAMP
stack.

## Problem

Apache returns an HTTP 500 Internal Server Error because WordPress attempts
to load a PHP file with an incorrect `.phpp` extension.

The incorrect reference is located inside:

`/var/www/html/wp-settings.php`

## Solution

The Puppet manifest replaces `phpp` with `php` in the WordPress settings
file.

## File

| File | Description |
| --- | --- |
| `0-strace_is_your_friend.pp` | Fixes the WordPress PHP extension typo. |

## Concepts

This project covers Apache, PHP, WordPress, HTTP 500 errors, strace, Linux
system calls, Puppet manifests, and idempotent configuration management.
