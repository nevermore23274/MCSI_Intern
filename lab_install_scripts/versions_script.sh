#!/bin/bash

# Clear output from system update/upgrade
printf "\033c"

# Check VS Code version
echo "### VS CODE VERSION ###"
code --version

# Check python version
echo -e "\n### PYTHON VERSION ###"
python --version

# Check Ruby version
echo -e "\n### RUBY VERSION ###"
ruby --version

# Go into console folder, run powershell script, return to root directory
echo -e "\n### POWERSHELL CHECK ###"
cd console_print_checks ; pwsh hello_world.ps1
cd ..

# Go into console folder, build and run C script, return to root directory
echo -e "\n### C COMPILER CHECK ###"
cd console_print_checks ; gcc -o hello hello_world.c ; ./hello
cd ..

# Check PHP version
echo -e "\n\n### PHP VERSION ###"
php -v

# Check XAMPP version/status
echo -e "\n### XAMPP/LAMPP VERSION ###"
sudo /opt/lampp/lampp status

# Wait for user input to finish program, and clear output
echo -e "\n\n"
read -p "Press any key to continue... " -n1 -s
printf "\033c"
