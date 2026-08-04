#! /bin/bash

# Program Description: Script collects and displays comprehensive network information. This includes active network interfaces with IP and MAC addresses, check if wireless interfaces are available, and display current DNS server

echo "IP and MAC Address:"
ifconfig | grep -e "broadcast" -e "ether"

echo -e "\nInterface Status:"
iwconfig

echo "DNS Servers:"
cat /etc/resolv.conf | grep -v "#"
