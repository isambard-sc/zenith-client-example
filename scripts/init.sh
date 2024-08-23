#!/bin/bash

# Check if the source file is provided as a parameter
if [ -z "$1" ]; then
  echo "Usage: $0 <source-file>"
  exit 1
fi

# Source the provided file
source "$1"

# Define variables for configuration

# Run the init command
zenith-client init \
  --registrar-url "https://$ZENITH_REGISTRAR_HOST/registrar/" \
  --token "$(jq -r '.token' $SUBDOMAIN_FILE)" \
  --ssh-identity-path "$SSH_PRIKEY_FILE"