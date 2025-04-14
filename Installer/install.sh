#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - Install Script
#  * Version: 1.0.0
#  * Last Updated: 04-14-2025
#  *
#  * This script installs the JMF Hosting Egg Manager suite.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

set -e

# Display header
figlet "JMF EggManager" | lolcat -a -s 100 | boxes -d nuke

# Logging setup
LOGFILE="jmf-eggmanager-install.log"
echo "[INFO] Starting installation..." | tee -a "$LOGFILE"

# Dependencies
DEPENDENCIES=(git figlet lolcat boxes jq curl)
echo "[INFO] Installing dependencies..." | tee -a "$LOGFILE"
sudo apt update && sudo apt install -y "${DEPENDENCIES[@]}"

# Create installation directory
INSTALL_DIR="$HOME/JMF-Hosting-EggManager"
echo "[INFO] Creating installation directory at $INSTALL_DIR" | tee -a "$LOGFILE"
mkdir -p "$INSTALL_DIR"

# Clone GitHub repository
echo "[INFO] Cloning JMF EggManager into $INSTALL_DIR" | tee -a "$LOGFILE"
git clone https://github.com/Nanaimo2013/JMF-Hosting-EggManager.git "$INSTALL_DIR"

# Make all scripts executable in the modules directory and root
chmod -R +x "$INSTALL_DIR/modules/*.sh"  # Make scripts in the modules directory executable
chmod -R +x "$INSTALL_DIR/*.sh"           # Make any scripts in the root directory executable
echo "[INFO] Made all scripts executable." | tee -a "$LOGFILE"

# Completion message
figlet "Installed!" | lolcat -a -s 100 | boxes -d parchment

echo -e "\nInstallation Complete! Navigate to: $INSTALL_DIR/scripts to begin using the Egg Manager." | tee -a "$LOGFILE"
echo "[INFO] You can now run: ./egg-manager.sh --help" | tee -a "$LOGFILE"
