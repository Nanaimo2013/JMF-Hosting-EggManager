# Setup Script Usage

This document provides instructions for using the setup script in the JMF Hosting Egg Manager.

## Purpose

The `setup.sh` script is designed to set up the JMF Hosting Egg Manager by creating necessary directories and cloning required repositories.

## Usage

To run the setup script, use the following command:

```bash
./setup.sh
```

## Steps Performed by the Script

1. **Display Header**: The script will display a header using `figlet`, `lolcat`, and `boxes` for a visually appealing introduction.

2. **Create Project Directories**: It will create the main project directory structure, including necessary subdirectories.

3. **Clone the Eggs Repository**: The script will check if the eggs repository exists; if not, it will clone it from GitHub.

4. **Create Configuration File**: A default configuration file (`jmf.config`) will be created, mapping game identifiers to their respective egg paths.

## Example

To set up the JMF Hosting Egg Manager, simply run:

```bash
chmod +x setup.sh
./setup.sh
```

---

For more information on the installation process, refer to the [install.md](install.md) document.
