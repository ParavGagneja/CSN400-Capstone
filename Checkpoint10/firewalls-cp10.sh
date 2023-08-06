# allow custom port for partner Apache Server
iptables -A FORWARD -p tcp -s 10.36.199.0/24 -d 192.168.18.36 --dport 1818 -j ACCEPT
iptables -A FORWARD -p tcp -s 192.168.18.36 -d 10.36.199.0/24 --sport 1818 -j ACCEPT

# allow custom port for partner MySQL Server
iptables -A FORWARD -p tcp -s 10.36.199.0/24 -d 192.168.18.36 --dport 1618 -j ACCEPT
iptables -A FORWARD -p tcp -s 192.168.18.36 -d 10.36.199.0/24 --sport 1618 -j ACCEPT

# allow custom port for partner IIS Server
iptables -A FORWARD -p tcp -s 10.36.199.0/24 -d 192.168.18.36 --dport 1918 -j ACCEPT
iptables -A FORWARD -p tcp -s 192.168.18.36 -d 10.36.199.0/24 --sport 1918 -j ACCEPT

# allow custom port for partner Windows Server RDP
iptables -A FORWARD -p tcp -s 10.36.199.0/24 -d 192.168.18.36 --dport 1318 -j ACCEPT
iptables -A FORWARD -p tcp -s 192.168.18.36 -d 10.36.199.0/24 --sport 1318 -j ACCEPT

# allow custom port8818 for partner Linux Server SSH
iptables -A FORWARD -p tcp -s 10.36.199.0/24 -d 192.168.18.36 --dport 1218 -j ACCEPT
iptables -A FORWARD -p tcp -s 192.168.18.36 -d 10.36.199.0/24 --sport 1218 -j ACCEPT

# allow partner traffic after NAT mapping
#HTTP
iptables -A FORWARD -p tcp -s 192.168.18.36 --dport 80 -j ACCEPT
iptables -A FORWARD -p tcp -d 192.168.18.36 --sport 80 -j ACCEPT
# SSH
iptables -A FORWARD -p tcp -s 192.168.18.36 --dport 22 -j ACCEPT
iptables -A FORWARD -p tcp -d 192.168.18.36 --sport 22 -j ACCEPT
# RDP
iptables -A FORWARD -p tcp -s 192.168.18.36 --dport 3389 -j ACCEPT
iptables -A FORWARD -p tcp -d 192.168.18.36 --sport 3389 -j ACCEPT
#MySQL
iptables -A FORWARD -p tcp -s 192.168.18.36 --dport 3306 -j ACCEPT
iptables -A FORWARD -p tcp -d 192.168.18.36 --sport 3306 -j ACCEPT

# to DROP all traffic which is not explicitly allowed by firewall rules
iptables -A FORWARD -j DROP

# list the updated iptables
iptables -nvL --line