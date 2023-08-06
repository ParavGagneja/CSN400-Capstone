# to flush NAT tables
iptables -t nat -F

# to allow other students to access APACHE server
iptables -t nat -A PREROUTING -p tcp --dport 1823 -j DNAT --to-destination 172.17.23.37:80

# to allow other students to access MySQL server
iptables -t nat -A PREROUTING -p tcp --dport 1623 -j DNAT --to-destination 172.17.23.37:3306

# to allow other students to access Linux server - SSH
iptables -t nat -A PREROUTING -p tcp --dport 1223 -j DNAT --to-destination 172.17.23.37:22

# to allow other students to access IIS server
iptables -t nat -A PREROUTING -p tcp --dport 1923 -j DNAT --to-destination 172.17.23.36:80

# to allow other students to access Windows server - RDP
iptables -t nat -A PREROUTING -p tcp --dport 1323 -j DNAT --to-destination 172.17.23.36:3389

#POSTROUTING
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE