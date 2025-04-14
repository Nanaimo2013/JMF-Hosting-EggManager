# Install Script Usage

This document provides instructions for using the install script in the JMF Hosting Egg Manager.

## Purpose

The `install.sh` script is designed to install the JMF Hosting Egg Manager suite, including all necessary dependencies and configurations.

## Usage

To run the install script, use the following command:

```bash
./install.sh
```

## Steps Performed by the Script

1. **Dependency Installation**: The script will install the required dependencies for the Egg Manager, including:
   - `git`
   - `figlet`
   - `lolcat`
   - `boxes`
   - `jq`
   - `curl`

2. **Clone the Repository**: The script will clone the JMF Hosting Egg Manager repository into the specified installation directory.

3. **Make Scripts Executable**: It will ensure that all scripts in the installation directory are executable.

4. **Completion Message**: Upon successful installation, the script will display a completion message and provide instructions on how to start using the Egg Manager.

## Example

To install the JMF Hosting Egg Manager, simply run:

```bash
chmod +x install.sh
./install.sh
```

---

For more information on the commands available in the Egg Manager, refer to the [commands.md](../cli/commands.md) document.
