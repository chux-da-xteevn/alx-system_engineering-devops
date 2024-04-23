#!/usr/bin/env bash

# Script that configures SSH key-based authentication

# Define SSH config file
SSH_CONFIG_FILE=~/.ssh/config

# check the existence of the config file
if [ ! -f $SSH_CONFIG_FILE ]; then
    touch $SSH_CONFIG_FILE
fi

# Check if config for 530646-web-01 already exists.
WEB_01_CONFIG=$(grep -q "Host 530646-web-01" "$SSH_CONFIG_FILE" && echo "found" ||  echo "not found")

if [ "$530646_WEB_01_CONFIG" == "not found" ]; then
    echo "Host 530646-web-01" >> "$SSH_CONFIG_FILE"
    echo "    Hostname 18.234.129.27" >> "$SSH_CONFIG_FILE"
    echo "    User ubuntu" >> "$SSH_CONFIG_FILE"
    echo "    IdentityFile ~/.ssh/$KEY_FILENAME" >> "$SSH_CONFIG_FILE"
    echo "    PasswordAuthentication no" >> "$SSH_CONFIG_FILE"

    # Success message
    echo "SSH configuration for 530646-web-01 has been added to $SSH_CONFIG_FILE with private key file name set to $KEY_FILENAME"
fi

# connect to web-server
echo "Connecting to server...."
ssh 530646-web-01


