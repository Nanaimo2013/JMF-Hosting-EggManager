#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - Update Script
#  * Version: 1.0.0
#  * Last Updated: 04-14-2025
#  *
#  * This script updates the JMF Hosting Egg Manager suite.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

set -e

# Display header
figlet "JMF EggManager Update" | lolcat -a -s 100 | boxes -d nuke

# Logging setup
LOGFILE="jmf-eggmanager-update.log"
echo "[INFO] Starting update..." | tee -a "$LOGFILE"

# Dependencies
DEPENDENCIES=(git figlet lolcat boxes jq curl)
echo "[INFO] Installing dependencies if not already installed..." | tee -a "$LOGFILE"
sudo apt update && sudo apt install -y "${DEPENDENCIES[@]}"

# Update installation directory
INSTALL_DIR="$HOME/JMF-Hosting-EggManager"
echo "[INFO] Updating JMF EggManager in $INSTALL_DIR" | tee -a "$LOGFILE"
cd "$INSTALL_DIR" || { echo "[ERROR] Installation directory not found."; exit 1; }
git pull origin main

# Make all scripts executable
chmod -R +x "$INSTALL_DIR/scripts"
echo "[INFO] Made all scripts executable." | tee -a "$LOGFILE"

# Completion message
figlet "Updated!" | lolcat -a -s 100 | boxes -d parchment

echo -e "\nUpdate Complete! Navigate to: $INSTALL_DIR/scripts to begin using the Egg Manager." | tee -a "$LOGFILE"
echo "[INFO] You can now run: ./egg-manager.sh --help" | tee -a "$LOGFILE"
