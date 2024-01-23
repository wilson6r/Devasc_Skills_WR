#!/bin/bash

set -x
# Set variables
IP_HOST="192.168.56.107"
RESTCONF_USERNAME="cisco"
RESTCONF_PASSWORD="cisco123!"
DATA_FORMAT="application/yang-data+json"
LOOPBACK_INTERFACE="Loopback199"
LOOPBACK_IP="10.1.99.1"

# RESTCONF URLs
API_URL_PUT="https://${IP_HOST}/restconf/data/ietf-interfaces:interfaces/interface=${LOOPBACK_INTERFACE}"
API_URL_GET="https://${IP_HOST}/restconf/data/ietf-interfaces:interfaces"

# Headers for RESTCONF requests
HEADERS="-H 'Accept: ${DATA_FORMAT}' -H 'Content-type: ${DATA_FORMAT}'"

# Basic authentication
BASIC_AUTH="-u ${RESTCONF_USERNAME}:${RESTCONF_PASSWORD}"

# Payload for configuring loopback interface
YANG_CONFIG="{\"ietf-interfaces:interface\":{\"name\":\"${LOOPBACK_INTERFACE}\",\"description\":\"RESTCONF => ${LOOPBACK_INTERFACE}\",\"type\":\"iana-if-type:softwareLoopback\",\"enabled\":true,\"ietf-ip:ipv4\":{\"address\":[{\"ip\":\"${LOOPBACK_IP}\",\"netmask\":\"255.255.255.0\"}]}}}}"

# Output file
OUTPUT_FILE="check_restconf_api.txt"

# Function to perform RESTCONF API call
perform_restconf_api_call() {
    echo "============"
    echo "Status Code: $1"
    echo "============"
}

# Main script execution
echo "$(date)" > $OUTPUT_FILE
echo "START REST API CALL" >> $OUTPUT_FILE

# First API Call (PUT)
echo "============"
echo "FIRST API CALL"
echo "============"
echo "Status Code: $(curl -X PUT $API_URL_PUT -d "$YANG_CONFIG" $HEADERS $BASIC_AUTH --insecure -w "%{http_code}" -o /dev/null)" | tee -a $OUTPUT_FILE

# Second API Call (GET)
echo "============"
echo "SECOND API CALL"
echo "============"
echo "Status Code: $(curl $API_URL_GET $HEADERS $BASIC_AUTH --insecure -w "%{http_code}" -o /dev/null)" | tee -a $OUTPUT_FILE
echo "Interfaces:" | tee -a $OUTPUT_FILE
curl $API_URL_GET $HEADERS $BASIC_AUTH --insecure -s | jq '.' | tee -a $OUTPUT_FILE

echo "END REST API CALL" >> $OUTPUT_FILE
