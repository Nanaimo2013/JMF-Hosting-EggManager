#!/bin/bash

# /**
#  * JMF Hosting Egg Manager - Logger
#  * Version: 1.0.0
#  * Last Updated: 2025-04-14
#  *
#  * This script provides logging functionalities for the JMF Hosting Egg Manager suite,
#  * allowing for consistent and formatted logging of information, warnings, errors, and debug messages.
#  * It helps in tracking the execution flow and diagnosing issues during the management of game server eggs.
#  *
#  * © 2025 JMFHosting. All Rights Reserved.
#  * Developed by Nanaimo2013 (https://github.com/Nanaimo2013)
#  * Website: https://www.jmfhosting.com
#  * Panel: https://panel.jmfhosting.com
#  */

timestamp() {
    date +"%Y-%m-%d %H:%M:%S"
}

log_file="logs/${1:-log-$(date +%F-%H-%M-%S).log}"

# Ensure the log directory exists
mkdir -p "$(dirname "$log_file")"

log() {
    echo -e "[$(timestamp)] INFO: $*" | tee -a "$log_file"
    figlet "INFO: $*" | lolcat | boxes -d dog
}

log_warn() {
    echo -e "\033[33m[$(timestamp)] WARN: $*\033[0m" | tee -a "$log_file"
    figlet "WARN: $*" | lolcat | boxes -d dog
}

log_err() {
    echo -e "\033[31m[$(timestamp)] ERROR: $*\033[0m" | tee -a "$log_file" >&2
    figlet "ERROR: $*" | lolcat | boxes -d dog
}

log_ok() {
    echo -e "\033[32m[$(timestamp)] OK: $*\033[0m" | tee -a "$log_file"
    figlet "OK: $*" | lolcat | boxes -d dog
}

log_debug() {
    if [ "$DEBUG_MODE" -eq 1 ]; then
        echo -e "\033[34m[$(timestamp)] DEBUG: $*\033[0m" | tee -a "$log_file"
        figlet "DEBUG: $*" | lolcat | boxes -d dog
    fi
}

log_info() {
    echo -e "\033[36m[$(timestamp)] INFO: $*\033[0m" | tee -a "$log_file"
    figlet "INFO: $*" | lolcat | boxes -d dog
}

# Export log functions to be used in other scripts
export -f log
export -f log_warn
export -f log_err
export -f log_ok
export -f log_debug
export -f log_info
