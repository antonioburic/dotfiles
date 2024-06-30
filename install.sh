#!/bin/bash

# Function to check if curl is installed
check_curl_installed() {
    if ! command -v curl &> /dev/null; then
        echo "curl could not be found, installing curl..."
        sudo apt-get update && sudo apt-get install -y curl
    else
        echo "curl is already installed."
    fi
}

# Function to install Oh-My-Bash
install_oh_my_bash() {
    echo "Installing Oh-My-Bash..."
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
}

# Main script
main() {
    check_curl_installed
    install_oh_my_bash
}

main

