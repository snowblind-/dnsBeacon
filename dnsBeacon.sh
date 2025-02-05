#!/bin/bash

# Set the DNS server and the target domain
DNS_SERVER="8.8.8.8"  # Google's DNS server or your own DNS server
TARGET_DOMAIN="beacon.cloudsecurity.ninja"

# Set the source IP address (interface)
SOURCE_IP="192.168.80.10"  # Specify the source IP address here

# Loop to send a DNS beacon every 10 seconds
while true; do
    # Send the DNS query with a source IP address using `dig`
    echo "Sending DNS query to $TARGET_DOMAIN from $SOURCE_IP..."
    dig @$DNS_SERVER $TARGET_DOMAIN -b $SOURCE_IP

    # Wait for 10 seconds before sending the next beacon
    sleep 10
done
