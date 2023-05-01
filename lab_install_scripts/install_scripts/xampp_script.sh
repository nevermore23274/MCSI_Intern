#!/bin/bash

sudo /opt/lampp/manager-linux-x64.run

if [[ $? > 0 ]]; then
	# Install XAMPP for Linux
	wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.2.4/xampp-linux-x64-8.2.4-0-installer.run
 
	# Set permissions
	sudo chmod 755 xampp-linux-x64-8.2.4-0-installer.run

	# Run installer
	sudo ./xampp-linux-x64-8.2.4-0-installer.run
fi
