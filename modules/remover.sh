#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - remover.sh
#  * Version: 1.0.0
#  * Last Updated: 2025-04-14
#  *
#  * This script removes the eggs folder and its contents after user confirmation.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

# Display header
figlet "JMF Hosting" | lolcat -a -s 100 | boxes -d nuke

# Log file setup
source modules/logger.sh remove-$(date +%F).log

# Main script logic
echo "Welcome to the JMF Hosting Egg Manager!"

read -p "⚠️ Confirm remove eggs folder? (y/N): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
    if [ -d "eggs" ]; then
        rm -rf eggs
        log_ok "✅ Eggs repo deleted successfully."
    else
        log_warn "⚠️  Eggs folder does not exist."
    fi
else
    log "Cancelled deletion."
fi
