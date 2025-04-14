#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - resetter.sh
#  * Version: 1.0.0
#  * Last Updated: 2025-04-14
#  *
#  * This script resets the egg environment by removing the existing eggs and cloning the latest repository.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

# Display header
figlet "JMF Hosting" | lolcat -a -s 100 | boxes -d nuke

# Log file setup
source modules/logger.sh reset-$(date +%F).log

# Main script logic
echo "Welcome to the JMF Hosting Egg Manager!"

# Remove existing eggs
bash modules/remover.sh

# Clone the latest eggs repository
if git clone https://github.com/parkervcp/eggs.git; then
    log_ok "Repo cloned."
else
    log_err "Failed to clone repo."
fi

# Run the installer script
bash modules/installer.sh
