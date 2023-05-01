#!/bin/bash

program=(code)

for program in "${programs[@]}"; do
    if ! command -v "$program" > /dev/null 2>&1; then
    	# Install needed packages
	    sudo apt install curl gpg gnupg2 software-properties-common apt-transport-https 

	    # Import Microsoft GPG key
	    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	    sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

	    # Add APT repo for VS Code
	    echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

	    sudo apt update

      sudo apt install "$program" -y
    fi
done
