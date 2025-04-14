# Frequently Asked Questions (FAQ)

This document addresses common questions and issues related to the JMF Hosting Egg Manager. If you have a question that is not covered here, feel free to open an issue in the [Issues section](https://github.com/Nanaimo2013/JMF-Hosting-EggManager/issues) of the repository.

## General Questions

### 1. What is the JMF Hosting Egg Manager?

The JMF Hosting Egg Manager is a tool designed to manage game server eggs for the Pterodactyl panel, simplifying the installation, updating, and management of game server configurations.

### 2. How do I install the JMF Hosting Egg Manager?

To install the Egg Manager, follow the instructions in the [Installation Guide](script-usage/install.md).

### 3. How do I update the Egg Manager?

You can update the Egg Manager by running the updater script. For detailed instructions, refer to the [Updater Script Usage](script-usage/updater.md).

## Troubleshooting

### 4. I encountered an error while running the install script. What should I do?

- Ensure that you have all the required dependencies installed. The install script will attempt to install them, but you may need to install some manually.
- Check the log files in the `logs/` directory for more details on the error.

### 5. The eggs folder is not being removed. Why?

- The remover script requires user confirmation before deleting the eggs folder. Make sure you confirm the prompt when running the script.
- If the folder does not exist, the script will log a warning message.

### 6. How can I contribute to the project?

We welcome contributions! Please read the [Contributing Guidelines](../CONTRIBUTING.md) for more information on how to get involved.

## Additional Resources

- [GitHub Flow](https://guides.github.com/introduction/flow/) - A guide to the GitHub workflow.
- [Markdown Guide](https://www.markdownguide.org/) - A resource for writing in Markdown.

---

If you have any other questions or need further assistance, please feel free to reach out!
