# Commands for JMF Hosting Egg Manager

This document provides a list of available commands for the JMF Hosting Egg Manager's command-line interface (CLI) along with their descriptions and usage examples.

## Available Commands

### 1. install

**Description**: Installs all listed game server eggs as defined in the configuration file.

**Usage**:
```bash
./jmf-cli.sh install
```

### 2. update

**Description**: Pulls the latest changes from the egg repository.

**Usage**:
```bash
./jmf-cli.sh update
```

### 3. search

**Description**: Searches for eggs by a specified keyword.

**Usage**:
```bash
./jmf-cli.sh search <term>
```
**Example**:
```bash
./jmf-cli.sh search minecraft
```

### 4. remove

**Description**: Deletes the eggs folder and its contents after user confirmation.

**Usage**:
```bash
./jmf-cli.sh remove
```

### 5. reset

**Description**: Resets the egg environment by recloning the repository and reinstalling eggs.

**Usage**:
```bash
./jmf-cli.sh reset
```

### 6. help

**Description**: Displays help information for using the CLI.

**Usage**:
```bash
./jmf-cli.sh help
```

---

For more detailed information on each command, refer to the [scripts-explained.md](../scripts-explained.md) document.
