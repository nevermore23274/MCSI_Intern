#!/bin/bash

# Set variables for scripts
VS_CODE_SCRIPT="install_scripts/vscode_script.sh"
PYTHON_SCRIPT="install_scripts/python_script.sh"
RUBY_SCRIPT="install_scripts/ruby_script.sh"
PS_SCRIPT="install_scripts/powershell_script.sh"
C_SCRIPT="install_scripts/c_script.sh"
PHP_SCRIPT="install_scripts/php_script.sh"
XAMPP_SCRIPT="install_scripts/xampp_script.sh"
VERSION_SCRIPT="versions_script.sh"

# Update/upgrade system
sudo apt update && sudo apt upgrade -y

# Run scripts in order given for exercise
source "$VS_CODE_SCRIPT"
source "$PYTHON_SCRIPT"
source "$RUBY_SCRIPT"
source "$PS_SCRIPT"
source "$C_SCRIPT"
source "$PHP_SCRIPT"
source "$XAMPP_SCRIPT"
source "$VERSION_SCRIPT"
