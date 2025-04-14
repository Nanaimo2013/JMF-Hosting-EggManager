# Flags and Options for JMF Hosting Egg Manager

This document outlines the flags and options available for the JMF Hosting Egg Manager's command-line interface (CLI).

## Global Flags

### -h, --help

**Description**: Displays help information for the command being executed.

**Usage**:
```bash
./jmf-cli.sh <command> --help
```

### -v, --verbose

**Description**: Enables verbose output, providing more detailed information during command execution.

**Usage**:
```bash
./jmf-cli.sh <command> --verbose
```

## Command-Specific Options

### install

- **--force**: Forces the installation of eggs, even if they are already installed.

**Usage**:
```bash
./jmf-cli.sh install --force
```

### update

- **--dry-run**: Simulates the update process without making any changes.

**Usage**:
```bash
./jmf-cli.sh update --dry-run
```

---

For more information on available commands, refer to the [commands.md](commands.md) document.
