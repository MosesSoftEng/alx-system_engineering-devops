# :book: 0x13. Firewall

![330px-Firewall.png](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Firewall.png/330px-Firewall.png)
*An illustration of a network-based firewall within a network, courtesy of wikipedia*

A firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules.It typically establishes a barrier between a trusted network and an untrusted network, such as the Internet.

## Firewall types
### 1. Network-based
Positioned between two or more networks, typically between the LAN and WAN. They are either;
 - a software appliance running on general-purpose hardware.
 - a hardware appliance running on special-purpose hardware.
 - a virtual appliance running on a virtual host controlled by a hypervisor.

### 2. host-based system firewalls
Deployed directly on the host itself to control network traffic or other computing resources. Can be;
 - a daemon or service as a part of the operating system.
 - an agent application for protection.


# :computer: Tasks
## [0. Block all incoming traffic but](0-block_all_incoming_traffic_but)
Install firewall and set up rules; block all incoming traffic except TCP ports 22, 443 and 80 in web-01 server.

```bash
# Check ufw status ans rules
sudo ufw status verbose

# Allow SSH
sudo ufw allow ssh

# Allow HTTPS and SSL
sudo ufw allow https

# Allow HTTP
sudo ufw allow http
```

# :books: References
1. [Firewall (computing) Wikipedia](https://en.wikipedia.org/wiki/Firewall_%28computing%29)