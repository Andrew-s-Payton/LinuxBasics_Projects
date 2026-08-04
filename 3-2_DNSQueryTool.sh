#! /bin/bash

# A script that takes a domain name as input and performs DNS reconnaissance. It should find the nameservers, mail exxchange servers, and IP address for the domain. Then allow the user to optionally add Google's DNS to their resolv.conf

read domainInput

# Dig was alreay previously learned, cut was looked up which splits output and removes the first field
lineNumNS=$(dig $domainInput ns | grep -n "ANSWER" | cut -d: -f1 | tail -n 1)
lineNumXS=$(dig $domainInput xs | grep -n "ANSWER" | cut -d: -f1 | tail -n 1)

# Typecasting into an integer was also searched
(( lineNumNS=$lineNumNS+1 ))
(( lineNumXS=$lineNumXS+1 ))
dig $domainInput ns | tail -n+$lineNumNS | head -n 1
dig $domainInput xs | tail -n+$lineNumXS | head -n 1
