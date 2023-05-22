#!/bin/bash

fraudguard_username="4Da3Rk5KR9LtM1zE"
fraudguard_password="h8e35p71TVJSwKG8"

findip_auth="1e886eec25744913a4ad67b13a2245c2"

auth_log="/var/log/auth.log"
output_file="/usr/spies_ssh.txt"
csv_file="/usr/spies_ssh.csv"

# Extract unique IP addresses from auth.log, count them, and sort by occurrence
grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" "$auth_log" | sort | uniq -c | sort -nr > "$output_file"

# Function to print a formatted table row
print_table_row() {
    local columns=("$@")
    for ((i = 0; i < ${#columns[@]}; i++)); do
        printf "%-15s " "${columns[$i]}"
    done
    echo
}

# Write the CSV headers to the file
echo "AttemptsCount,IpAddress,FirstDate,LastDate,Country,City,Timezone,Threat,RiskLevel" > "$csv_file"
print_table_row "AttemptsCount" "IpAddress" "FirstDate" "LastDate" "Country" "City" "Timezone" "Threat" "RiskLevel"


# Read the output file, write each row to the CSV file, and print as a table row
while read -r line; do
    attempts=$(echo "$line" | awk '{print $1}')
    ip_address=$(echo "$line" | awk '{print $2}')

    # Get the last date from the auth.log for the IP address
    last_date=$(grep "$ip_address" "$auth_log" | tail -1 | awk '{print $1, $2, $3}')

    # Get the first date
    first_date=$(grep "$ip_address" "$auth_log" | head -1 | awk '{print $1, $2, $3}')

    # Make a request to the FraudGuard API to get IP reputation information
    api_response=$(curl -s -X GET -u "$fraudguard_username:$fraudguard_password" "https://api.fraudguard.io/v2/ip/$ip_address")
    threat=$(echo "$api_response" | jq -r '.threat')
    risk_level=$(echo "$api_response" | jq -r '.risk_level')

    # Extract geolocation information from the existing findip.net API
    geolocation_info=$(curl -s "https://api.findip.net/$ip_address/?token=$findip_auth")
    country=$(echo "$geolocation_info" | jq -r '.country.names.en')
    city=$(echo "$geolocation_info" | jq -r '.city.names.en')
    timezone=$(echo "$geolocation_info" | jq -r '.location.time_zone')

    # Append the row to the CSV file
    echo "$attempts,$ip_address,$first_date,$last_date,$country,$city,$timezone,$threat,$risk_level" >> "$csv_file"

    # Print the row as a formatted table row
    print_table_row "$attempts" "$ip_address" "$first_date" "$last_date" "$country" "$city" "$timezone" "$threat" "$risk_level"
done < "$output_file"
