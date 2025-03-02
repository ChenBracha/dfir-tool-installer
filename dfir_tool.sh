#!/bin/bash

###########################################
# Developer: Chen Bracha
# Date: 03/02/2025
# Version: 1.1.0
# Description: DFIR Installation tools with user options
###########################################

LOG_FILE="installation_status.txt"

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

# Function to display help information
show_help() {
    echo "DFIR Tools Installation Script"
    echo
    echo "This script installs essential Digital Forensics and Incident Response (DFIR) tools on your Linux system."
    echo "The tools included are:"
    echo "1. **Autopsy**: A digital forensics platform for analyzing disk images and file systems."
    echo "2. **Nmap**: A network scanner used for discovering hosts and services."
    echo "3. **Wireshark**: A network protocol analyzer for capturing and analyzing network packets."
    echo
    echo "Installation Process:"
    echo "1. Updates system package lists."
    echo "2. Installs Snapd if not already installed."
    echo "3. Installs the DFIR tools: Autopsy, Nmap, and Wireshark."
    echo "4. Logs the installation status in a file (\$LOG_FILE)."
    echo
}

# Function to remove the script
remove_script() {
    echo "Are you sure you want to remove the script? (y/n)"
    read -r choice
    if [ "$choice" == "y" ]; then
        rm -- "$0"
        echo "Script removed successfully."
    else
        echo "Script removal canceled."
    fi
}

# Main menu function
show_menu() {
    echo "---------------------------------------"
    echo "DFIR Tool Installation Script"
    echo "---------------------------------------"
    echo "1. Run the installation"
    echo "2. Remove the script"
    echo "3. Show help"
    echo "4. Exit"
    echo -n "Please choose an option [1-4]: "
    read -r choice

    case $choice in
        1)
            run_installation
            ;;
        2)
            remove_script
            ;;
        3)
            show_help
            show_menu
            ;;
        4)
            echo "Exiting the script."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            show_menu
            ;;
    esac
}

# Function to run the installation
run_installation() {
    echo "Starting DFIR tools installation..."
    echo "Installation log - $(date)" > "$LOG_FILE"
    echo "------------------------------------" >> "$LOG_FILE"

    # Update package lists
    sudo apt update -y &>/dev/null

    # Install snapd
    install_package "snapd" "sudo apt install -y snapd"

    # Install Autopsy
    install_package "autopsy" "sudo snap install autopsy"

    # Install Nmap
    install_package "nmap" "sudo snap install nmap"

    # Install Wireshark
    install_package "wireshark" "sudo apt install -y wireshark"
    sudo usermod -aG wireshark "$USER" # Allow non-root users to capture packets
	
    # Install YARA
    install_package "yara" "sudo apt-get install yara"


    #Install Suricata
    install_package "suricata" "sudo apt-get install suricata"	

    echo "Installation completed. Check $LOG_FILE for details."
}

# Main entry point
clear
show_menu

