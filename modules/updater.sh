#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - updater.sh
#  * Version: 1.1.0
#  * Last Updated: 2025-04-14
#  *
#  * This script updates the egg repository by pulling the latest changes from the remote Git repository.
#  * It ensures the repository is in a clean state before pulling updates and provides detailed logging.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

# Display header
figlet "JMF Hosting" | lolcat -a -s 100 | boxes -d nuke

# Log file setup
source modules/logger.sh update-$(date +%F).log

# Main script logic
echo "Welcome to the JMF Hosting Egg Manager!"

# Check if the eggs directory exists
if [ -d "eggs" ]; then
    cd eggs || { log_err "Failed to change directory to 'eggs'."; exit 1; }
    
    # Check for uncommitted changes
    if [[ $(git status --porcelain) ]]; then
        log_warn "Uncommitted changes detected. Please commit or stash them before updating."
        exit 1
    fi

    # Pull the latest changes
    if git pull; then
        log_ok "Egg repo updated successfully."
    else
        log_err "Failed to update repo. Please check your network connection or repository access."
    fi
else
    log_err "'eggs' directory does not exist. Please ensure the repository is cloned."
fi
