#!/bin/bash

###########################################
# Developer: Chen Bracha
# Date: 03/02/2025
# Version: 1.0.0
# Description: DFIR Installation tools
###########################################

LOG_FILE="installation_status.txt"
> "$LOG_FILE"  # Clear previous logs

echo "Starting DFIR tools installation..."
echo "Installation log - $(date)" >> "$LOG_FILE"
echo "------------------------------------" >> "$LOG_FILE"

# Function to install a package and log the result
install_package() {
    local package_name=$1
    local install_command=$2

    if eval "$install_command" &>/dev/null; then
        echo "[SUCCESS] Installed: $package_name" >> "$LOG_FILE"
    else
        echo "[FAILED] Could not install: $package_name" >> "$LOG_FILE"
    fi
}

# Update package lists
sudo apt update -y &>/dev/null

# Install snapd
install_package "snapd" "sudo apt install -y snapd"

# Install Autopsy
install_package "autopsy" "sudo snap install autopsy"

# Install Nmap
install_package "nmap" "sudo snap install nmap"

# Install Wireshark
install_package "wireshark" "sudo apt install wireshark"
sudo usermod -aG wireshark $USER #Allow non-root users to capture packets

echo "Installation completed. Check $LOG_FILE for details."
