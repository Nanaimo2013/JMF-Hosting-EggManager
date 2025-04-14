#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - searcher.sh
#  * Version: 1.0.0
#  * Last Updated: 2025-04-14
#  *
#  * This script searches for egg configuration files based on a user-provided search term.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

# Display header
figlet "JMF Hosting" | lolcat -a -s 100 | boxes -d nuke

# Log file setup
source modules/logger.sh search-$(date +%F).log

# Main script logic
echo "Welcome to the JMF Hosting Egg Manager!"

term="$1"
if [ -z "$term" ]; then
    log_err "Search term required!"
    exit 1
fi

log "Searching for files containing: $term"
find eggs -type f -iname "*.json" | grep -i "$term" | tee -a "$log_file"
