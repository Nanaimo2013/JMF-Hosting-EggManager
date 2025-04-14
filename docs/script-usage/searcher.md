# Searcher Script Usage

This document provides instructions for using the searcher script in the JMF Hosting Egg Manager.

## Purpose

The `searcher.sh` script is designed to search for egg configuration files based on a user-provided search term.

## Usage

To run the searcher script, use the following command:

```bash
./searcher.sh <term>
```

## Steps Performed by the Script

1. **Display Header**: The script will display a header using `figlet`, `lolcat`, and `boxes` for a visually appealing introduction.

2. **Search for Files**: The script will search for egg configuration files that match the provided search term.

3. **Log Results**: The results of the search will be logged, showing which files were found.

## Example

To search for egg configuration files related to "minecraft", run:

```bash
./searcher.sh minecraft
```

---

For more information on the commands available in the Egg Manager, refer to the [commands.md](../cli/commands.md) document.
