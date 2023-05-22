#!/bin/bash

auth_log="/var/log/auth.log"
output_file="/usr/attempts_ssh.txt"

# Extract unique IP addresses from auth.log, count them, and sort by occurrence
grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" "$auth_log" | sort | uniq -c | sort -nr > "$output_file"

# Display the sorted list of IP addresses along with their attempt counts, last date, and geolocation information
echo "AttemptsCount  IpAddress      FirstDate     LastDate          Country City  Timezone"
while read -r line; do
    attempts=$(echo "$line" | awk '{print $1}')
    ip_address=$(echo "$line" | awk '{print $2}')
    
    # Get the last date from the auth.log for the IP address
    last_date=$(grep "$ip_address" "$auth_log" | tail -1 | awk '{print $1, $2, $3}')
   
    # Get the first date
    first_date=$(grep "$ip_address" "$auth_log" | head -1 | awk '{print $1, $2, $3}')
    
    # Make a request to the ipapi.co API to get geolocation information
    response=$(curl -s "https://api.findip.net/$ip_address/?token=1e886eec25744913a4ad67b13a2245c2")
    country=$(echo "$response" | jq -r '.country.names.en')
    city=$(echo "$response" | jq -r '.city.names.en')
    timezone=$(echo "$response" | jq -r '.location.time_zone')
    
    echo "$attempts  $ip_address  $first_date  $last_date  $country  $city  $timezone"
done < "$output_file"
