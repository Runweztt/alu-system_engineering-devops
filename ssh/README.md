# alu-system_engineering-devops

DevOps and system engineering exercises: SSH configuration, key management,
and secure remote access.

## ssh/

| File | Description |
| ---- | ----------- |
| `0-use_a_private_key` | Connects to the server using the private key `~/.ssh/school`. |
| `1-create_ssh_key_pair` | Generates a 4096-bit RSA key pair (`school` / `school.pub`), passphrase-protected. |
| `2-ssh_config` | SSH client config forcing key-based auth via `~/.ssh/school`, no password fallback. |
