ansible-wireguard
=================

The repository contains an Ansible playbook for installing a WireGuard VPN server and generating the client configuration. The playbook generates a single client configuration at a time with a unique ID into the **/etc/wireguard/peers/${ID}** folder. The client’s IP address is dynamically calculated based on the number of active peers on the server.

Supported platfroms:
- Debian 13 (Trixie)
- Ubuntu 22.04 (Jammy Jellyfish)
- Ubuntu 24.04 (Noble Numbat)

Requirements
------------

This role requires Ansible 2.19 or higher

Role Variables
--------------

```yaml
wireguard_server_ip: "10.0.0.1/24"
wireguard_server_port: 50000
wireguard_interface: "wg0"
wireguard_peers_allowed_ips: "0.0.0.0/0"
dns: ""
```

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
    - serhii9132.wireguard
```

License
-------

MIT
