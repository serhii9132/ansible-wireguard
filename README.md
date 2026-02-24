ansible-wireguard
=================

This WireGuard VPN server role supports multi-user access by generating multiple peers with unique IDs, storing all configuration files and keys in the /etc/wireguard/peers/${ID_PEER} directory.

Supported platfroms:
```
- Debian 13 (Trixie)
- Ubuntu 22.04 (Jammy Jellyfish)
- Ubuntu 24.04 (Noble Numbat)
```

Requirements
------------

This role requires Ansible 2.19 or higher

Role Variables
--------------

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>Comment</th>
    <th>Type</th>
    <th>Default Value</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>wireguard_server_ip</td>
    <td>Internal VPN IPv4 address for the server with CIDR mask</td>
    <td>str</td>
    <td>"10.0.0.1/24"</td>
  </tr>
  <tr>
    <td>wireguard_server_port</td>
    <td>Public UDP port where WireGuard listens for incoming connections</td>
    <td>int</td>
    <td>50000</td>
  </tr>
  <tr>
    <td>wireguard_peers_allowed_ips</td>
    <td>Subnets to route through the VPN on the client side. Set to 0.0.0.0/0 to route all traffic </td>
    <td>str</td>
    <td>"0.0.0.0/0"</td>
  </tr>
  <tr>
    <td>wireguard_dns</td>
    <td>Custom DNS servers to push to clients</td>
    <td>str</td>
    <td>""</td>
  </tr>
  <tr>
    <td>wireguard_peers</td>
    <td>An array of peer IDs</td>
    <td>list</td>
    <td>[]</td>
  </tr>
</tbody>
</table>

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
