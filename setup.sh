#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - Setup Script
#  * Version: 1.0.0
#  * Last Updated: 04/14/2025
#  *
#  * This script sets up the JMF Hosting Egg Manager and clones the necessary repositories.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

# Display header with ASCII art, color, and box
figlet "JMF Hosting" | lolcat -a -s 100 | boxes -d nuke

echo "📦 Setting up JMFHosting Egg Manager..."

# Create necessary directories
mkdir -p JMF-Hosting-EggManager/{logs,modules}
cd JMF-Hosting-EggManager || exit 1

# Clone repo if not already cloned
if [ ! -d "eggs" ]; then
  echo "[INFO] Cloning eggs repository..."
  git clone https://github.com/parkervcp/eggs.git
else
  echo "[INFO] Repository already exists. Pulling latest changes..."
  cd eggs && git pull && cd ..
fi

# Create game list config file
echo "[INFO] Creating game list configuration..."
cat > jmf.config << 'EOF'
unturned:games/unity/unturned/egg-unturned.json
terraria:games/terraria/terraria/egg-terraria.json
factorio:games/steamcmd/factorio/egg-factorio.json
fivem:games/gta/fivem/egg-fivem.json
minecraft-bedrock:games/minecraft/bedrock/egg-bedrock.json
garrysmod:games/source/garrysmod/egg-garrysmod.json
squad:games/steamcmd/squad/egg-squad.json
projectzomboid:games/steamcmd/project_zomboid/egg-projectzomboid.json
beamng:games/steamcmd/beamng/egg-beamng.json
EOF

echo "[INFO] Setup completed successfully."

# Completion message
figlet "Setup Complete" | lolcat -a -s 100 | boxes -d parchment
