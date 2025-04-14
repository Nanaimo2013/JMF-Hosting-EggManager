#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - installer.sh
#  * Version: 2.0.0
#  * Last Updated: 2025-04-14
#  *
#  * This script manages the installation of game server eggs by importing
#  * egg configurations from a specified configuration file. It ensures that
#  * all necessary files are present and utilizes the Pterodactyl artisan tool
#  * to perform the import operations, logging the process for tracking and
#  * debugging purposes.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

# Display Header
figlet "JMF Hosting" | lolcat -a -s 100 | boxes -d nuke
log_info "Starting Egg Installer..."

# Load logger
mkdir -p logs
source modules/logger.sh install-$(date +%F-%H-%M-%S).log

CONFIG_FILE="jmf.config"
EGGS_DIR="eggs"
ARTISAN="/var/www/pterodactyl/artisan"

# Check for the existence of the configuration file
if [ ! -f "$CONFIG_FILE" ]; then
    log_err "Config file '$CONFIG_FILE' not found. Aborting."
    exit 1
fi

# Check if the Pterodactyl artisan tool is executable
if [ ! -x "$ARTISAN" ]; then
    log_err "Pterodactyl artisan tool not found or not executable at '$ARTISAN'"
    exit 1
fi

total=0
success=0
fail=0

log "Reading configuration from $CONFIG_FILE..."

# Read the configuration file and process each egg
while IFS=: read -r name path; do
    [[ -z "$name" || -z "$path" ]] && continue

    json="$EGGS_DIR/$path"
    total=$((total+1))

    if [ -f "$json" ]; then
        log "📦 Importing egg: $name"
        if php "$ARTISAN" p:import-egg "$json"; then
            log_ok "✅ Successfully imported: $name"
            success=$((success+1))
        else
            log_err "❌ Failed to import: $name"
            fail=$((fail+1))
        fi
    else
        log_warn "⚠️  Egg file for $name not found: $json"
        fail=$((fail+1))
    fi
done < "$CONFIG_FILE"

log "Egg installation complete."
log_ok "✅ Successful: $success / $total"
log_err "❌ Failed: $fail / $total"
