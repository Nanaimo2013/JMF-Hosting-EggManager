# JMF Hosting Egg Manager

[![GitHub stars](https://img.shields.io/github/stars/Nanaimo2013/JMF-Hosting-EggManager?style=for-the-badge&color=yellow)](https://github.com/Nanaimo2013/JMF-Hosting-EggManager/stargazers) 
[![GitHub forks](https://img.shields.io/github/forks/Nanaimo2013/JMF-Hosting-EggManager?style=for-the-badge&color=lightgray)](https://github.com/Nanaimo2013/JMF-Hosting-EggManager/network/members) 
[![GitHub issues](https://img.shields.io/github/issues/Nanaimo2013/JMF-Hosting-EggManager?style=for-the-badge&color=red)](https://github.com/Nanaimo2013/JMF-Hosting-EggManager/issues) 
[![GitHub license](https://img.shields.io/github/license/Nanaimo2013/JMF-Hosting-EggManager?style=for-the-badge&color=blue)](https://github.com/Nanaimo2013/JMF-Hosting-EggManager/blob/main/LICENSE)

<br/>

[![Version](https://img.shields.io/github/v/release/Nanaimo2013/JMF-Hosting-EggManager?style=for-the-badge&color=blue&label=Version)](https://github.com/Nanaimo2013/JMF-Hosting-EggManager/releases)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg?style=for-the-badge&color=brightgreen)](https://github.com/Nanaimo2013/JMF-Hosting-EggManager/actions)

## Overview

The **JMF Hosting Egg Manager** is a powerful tool designed to manage game server eggs for the Pterodactyl panel. This project simplifies the installation, updating, and management of game server configurations, making it easier for users to deploy and maintain their game servers.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Commands](#commands)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)
- [Changelog](#changelog)
- [Contact](#contact)

## Features

- Easy installation and setup of game server eggs.
- Command-line interface for managing eggs.
- Automatic updates for egg configurations.
- Logging functionality for tracking operations.
- Community-driven development and support.

## Installation

To install the JMF Hosting Egg Manager, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/Nanaimo2013/JMF-Hosting-EggManager.git
   cd JMF-Hosting-EggManager
   ```

2. Run the setup script:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

## Usage

After installation, you can use the command-line interface to manage your game server eggs. Here are some common commands:

```bash
./jmf-cli.sh install       # Installs all listed eggs
./jmf-cli.sh update        # Pulls the latest changes
./jmf-cli.sh search <term> # Searches for eggs by keyword
./jmf-cli.sh remove        # Deletes the eggs folder
./jmf-cli.sh reset         # Reclones the repo and reinstalls eggs
```

## Commands

For a complete list of commands and their usage, refer to the [Commands Documentation](docs/cli/commands.md).

## Configuration

The configuration file `jmf.config` maps game identifiers to their respective egg paths. Ensure that this file is correctly set up for optimal performance.

## Contributing

Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute to this project.

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

## Changelog

All notable changes to this project will be documented in the [CHANGELOG.md](CHANGELOG.md) file.

## Contact

For any inquiries or support, please contact me on GitHub: [Nanaimo2013](https://github.com/Nanaimo2013).

---

Thank you for using the JMF Hosting Egg Manager! Happy server hosting!