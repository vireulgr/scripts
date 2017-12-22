#!/bin/bash

#1424441804
#SE=$( date +%s )
#1424441821
#SE=$(( SE - 60*60*12 ))
#1424441840
#echo $SE
#1424441845
#date +%s

# 192.168.238.102/4 1424769124
# 192.168.238.119/6 1424401804
# 192.168.238.172/6 1424769124
# 192.168.238.110/6 1424441845
# 192.168.238.77/4  1424769124
# 192.168.238.103/3 1424441804

check_entry_timeout() {

awk -f ~/filter_ips.awk -v now="$(date +%s)" -v period="$(( 60*60*12 ))" "$0" >> "$0"
sed -ie '0,/^HOSTS_END$/ { /^HOSTS$/, /^HOSTS_END$/ d; };' "$0"

}

check_entry_timeout
exit 0

HOSTS
192.168.238.102/4 1424769124
192.168.238.172/6 1424769124
192.168.238.77/4  1424769124
HOSTS_END