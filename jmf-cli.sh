#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - Cli
#  * Version: 1.0.0
#  * Last Updated: 2025-04-14
#  *
#  * This script provides a command-line interface for managing game server eggs, 
#  * allowing users to install, update, search, remove, and reset egg configurations.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

# Source the logger script for consistent logging
source ./logger.sh

# Configurations
DEBUG_MODE=0  # Set to 1 to enable debugging output
DATE_FORMAT="+%Y-%m-%d %H:%M:%S"

# Command input parameters
cmd="$1"
arg="$2"

# Validate command input
if [ -z "$cmd" ]; then
    log_err "Command not provided. Use './jmf-cli.sh help' for usage."
    exit 1
fi

# Main case structure for commands
case "$cmd" in
    install)
        log_ok "📦 Installing all listed eggs..."
        bash modules/installer.sh
        if [ $? -eq 0 ]; then
            log_ok "✅ Installation completed."
        else
            log_err "❌ Installation failed."
        fi
        ;;

    update)
        log_ok "🔄 Updating repository..."
        bash modules/updater.sh
        if [ $? -eq 0 ]; then
            log_ok "✅ Repository updated."
        else
            log_err "❌ Update failed."
        fi
        ;;

    search)
        if [ -z "$arg" ]; then
            log_err "Search term missing. Usage: './jmf-cli.sh search <term>'"
            exit 1
        fi
        log_ok "🔍 Searching for eggs related to '$arg'..."
        bash modules/searcher.sh "$arg"
        if [ $? -eq 0 ]; then
            log_ok "✅ Search completed."
        else
            log_err "❌ Search failed."
        fi
        ;;

    remove)
        log_ok "🗑️ Removing eggs folder..."
        bash modules/remover.sh
        if [ $? -eq 0 ]; then
            log_ok "✅ Eggs folder removed."
        else
            log_err "❌ Removal failed."
        fi
        ;;

    reset)
        log_ok "🔄 Resetting and recloning eggs..."
        bash modules/resetter.sh
        if [ $? -eq 0 ]; then
            log_ok "✅ Reset completed."
        else
            log_err "❌ Reset failed."
        fi
        ;;

    help|"")
        echo -e "🧰 \033[36mJMFHosting Egg Manager\033[0m CLI
Usage:
  ./jmf-cli.sh install       Install all listed eggs
  ./jmf-cli.sh update        Pull latest repo changes
  ./jmf-cli.sh search <term> Search for eggs by keyword
  ./jmf-cli.sh remove        Delete eggs folder
  ./jmf-cli.sh reset         Reclone the repo and reinstall eggs
  ./jmf-cli.sh help          Display this help message

Additional Info:
  - Logs are saved in 'logs/jmf-cli.log'
  - Enable debugging with DEBUG_MODE=1 in the script.
"
        log_ok "Displayed help message."
        ;;

    *)
        log_err "❌ Unknown command '$cmd'. Use './jmf-cli.sh help' for usage."
        ;;
esac
