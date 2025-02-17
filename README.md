# linux_configuration

Basic setup and configuration on a fresh Linux installation (tested on Ubuntu 24.04 LTS).


Execute the script directly from this github repository:

```
wget -O - https://raw.githubusercontent.com/fabiengaubert/linux_configuration/refs/heads/main/linux_configuration.sh | sudo bash
```


It will install:
- vim
- git
- net-tools
- build-essential
- VSCode
- Docker

It will configure:
- scroll mode to natural (like on MacOS)


Note:
Keyboard configuration is better done directly through Desktop installer as there are some known issues with *localectl* on Ubuntu 24.04 (see: [localectl: Failed to read list of keymaps](https://www.claudiokuenzler.com/blog/1257/how-to-fix-missing-keymaps-debian-ubuntu-localectl-failed-read-list)).

