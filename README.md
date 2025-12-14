## ansible-wireguard

The repository contains an Ansible playbook for installing a WireGuard VPN server and generating the client configuration. The playbook generates a single client configuration at a time with a unique ID into the **/etc/wireguard/peers/${ID}** folder. The client’s IP address is dynamically calculated based on the number of active peers on the server.

### Tested on OS:
- Debian 12
- Ubuntu 22.04

Playbook variables
--------------------
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
    <td>The internal IP address and subnet (CIDR) assigned to the WireGuard server within the VPN tunnel</td>
    <td>str</td>
    <td>10.0.0.1/24</td>
  </tr>
    <tr>
    <td>wireguard_server_port</td>
    <td>The UDP port number the WireGuard server listens on for incoming VPN connections from clients</td>
    <td>int</td>
    <td>50000</td>
  </tr>
  <tr>
    <td>wireguard_interface</td>
    <td>The specific name assigned to the virtual network interface (e.g., wg0, wg1) created by WireGuard on the server</td>
    <td>str</td>
    <td>wg0</td>
  </tr>
  <tr>
    <td>wireguard_peers_allowed_ips</td>
    <td>The list of IP addresses (or subnets) that the WireGuard server will route through the tunnel for connected clients. "0.0.0.0/0" means all internet traffic will be routed via the VPN</td>
    <td>list</td>
    <td>0.0.0.0/0</td>
  </tr>
  <tr>
    <td>dns</td>
    <td>Address of the DNS server</td>
    <td>str</td>
    <td>''</td>
  </tr>
</tbody>
</table>

### Usage
Run bootstrap.sh