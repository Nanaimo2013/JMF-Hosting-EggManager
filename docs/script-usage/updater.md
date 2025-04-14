# Updater Script Usage

This document provides instructions for using the updater script in the JMF Hosting Egg Manager.

## Purpose

The `updater.sh` script is designed to update the egg repository by pulling the latest changes from the remote Git repository.

## Usage

To run the updater script, use the following command:

```bash
./updater.sh
```

## Steps Performed by the Script

1. **Display Header**: The script will display a header using `figlet`, `lolcat`, and `boxes` for a visually appealing introduction.

2. **Check for Uncommitted Changes**: The script checks if there are any uncommitted changes in the eggs directory before proceeding.

3. **Pull Latest Changes**: If the directory is clean, the script will pull the latest changes from the remote repository.

4. **Log Results**: The outcome of the update process will be logged, indicating whether the update was successful or if there were issues.

## Example

To update the egg repository, simply run:

```bash
./updater.sh
```

---

For more information on the commands available in the Egg Manager, refer to the [commands.md](../cli/commands.md) document.
