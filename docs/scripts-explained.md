# Scripts Explained

This document provides detailed explanations of the scripts included in the JMF Hosting Egg Manager project. Each script serves a specific purpose in managing game server eggs for the Pterodactyl panel.

## 1. setup.sh

- **Purpose**: This script sets up the JMF Hosting Egg Manager by creating necessary directories and cloning required repositories.
- **Functionality**:
  - Displays a header using `figlet`, `lolcat`, and `boxes`.
  - Creates the main project directory structure.
  - Clones the eggs repository from GitHub if it does not already exist.
  - Creates a default configuration file (`jmf.config`) for mapping game identifiers to their respective egg paths.

## 2. jmf.config

- **Purpose**: Configuration file that maps game identifiers to their respective egg configuration files.
- **Functionality**:
  - Each line in the file follows the format: `<game_identifier>:<path_to_egg_configuration>`.
  - This file is essential for the proper functioning of the Egg Manager, as it allows the scripts to locate the correct egg configurations.

## 3. jmf-cli.sh

- **Purpose**: Command-line interface for managing game server eggs.
- **Functionality**:
  - Accepts commands such as `install`, `update`, `search`, `remove`, and `reset`.
  - Each command triggers the corresponding script in the `modules/` directory.
  - Provides user feedback through logging functions.

## 4. modules/installer.sh

- **Purpose**: Installs the JMF Hosting Egg Manager suite.
- **Functionality**:
  - Uses logging to provide feedback during the installation process.
  - Installs necessary dependencies and makes scripts executable.
  - Clones the main repository into the specified installation directory.

## 5. modules/logger.sh

- **Purpose**: Provides logging functionalities for the JMF Hosting Egg Manager suite.
- **Functionality**:
  - Defines various logging functions (`log`, `log_info`, `log_warn`, `log_err`, etc.) that format and display messages.
  - Utilizes `figlet`, `lolcat`, and `boxes` for enhanced visual output.

## 6. modules/remover.sh

- **Purpose**: Removes the eggs folder and its contents after user confirmation.
- **Functionality**:
  - Prompts the user for confirmation before deletion.
  - Logs the outcome of the removal process.

## 7. modules/resetter.sh

- **Purpose**: Resets the egg environment by removing existing eggs and cloning the latest repository.
- **Functionality**:
  - Calls the `remover.sh` script to delete the existing eggs.
  - Clones the latest version of the eggs repository from GitHub.

## 8. modules/searcher.sh

- **Purpose**: Searches for egg configuration files based on a user-provided search term.
- **Functionality**:
  - Uses the `find` command to locate files matching the search term.
  - Logs the results of the search.

## 9. modules/updater.sh

- **Purpose**: Updates the egg repository by pulling the latest changes from the remote Git repository.
- **Functionality**:
  - Checks for uncommitted changes before pulling updates.
  - Logs the outcome of the update process.

---

This document serves as a guide to understanding the purpose and functionality of each script in the JMF Hosting Egg Manager project. If you have any questions or need further clarification, feel free to reach out!
