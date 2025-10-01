## ansible-wireguard

The repository contains an Ansible playbook for installing a WireGuard VPN server and generating the client configuration. The playbook generates a single client configuration at a time with a unique ID into the **/etc/wireguard/clients/${ID}** folder. The client’s IP address is dynamically calculated based on the number of active peers on the server.

### Supported operating systems
- Debian 12
- Ubuntu 22.04

### Usage
1.Create a .env file in the root of the project with the following content:
```
export HOST_IP=192.168.100.100
export SSH_PORT=22222
export SSH_USER=user

export WIREGUARD_SERVER_IP="10.0.0.1/24"
export WIREGUARD_SERVER_PORT=22223
export WIREGUARD_INTERFACE="wg0"
export MAIN_DNS="8.8.8.8"
export SECONDARY_DNS="8.8.4.4"
```

2. Run bash run.sh