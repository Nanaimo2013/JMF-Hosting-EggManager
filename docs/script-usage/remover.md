# Remover Script Usage

This document provides instructions for using the remover script in the JMF Hosting Egg Manager.

## Purpose

The `remover.sh` script is designed to remove the eggs folder and its contents after user confirmation.

## Usage

To run the remover script, use the following command:

```bash
./remover.sh
```

## Steps Performed by the Script

1. **Display Header**: The script will display a header using `figlet`, `lolcat`, and `boxes` for a visually appealing introduction.

2. **User Confirmation**: The script prompts the user for confirmation before proceeding with the deletion of the eggs folder.

3. **Remove Eggs Folder**: If confirmed, the script will delete the eggs folder and log the outcome of the removal process.

## Example

To remove the eggs folder, simply run:

```bash
./remover.sh
```

---

For more information on the commands available in the Egg Manager, refer to the [commands.md](../cli/commands.md) document.
