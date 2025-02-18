# Ubuntu setup helpers

The scripts can be executed directly from this github repository.

## Ubuntu Desktop

Basic setup and configuration on a fresh Ubuntu Desktop installation (tested on Ubuntu Desktop 24.04 LTS).

### Installation

```
sudo wget -O - https://raw.githubusercontent.com/fabiengaubert/linux_configuration/refs/heads/main/ubuntu_desktop_install.sh | sudo bash
```

It will install:
- vim
- git
- net-tools
- build-essential
- VSCode
- Docker

### Configuration

```
wget -O - https://raw.githubusercontent.com/fabiengaubert/linux_configuration/refs/heads/main/ubuntu_desktop_config.sh | bash
```

It will configure:
- scroll mode to natural (like on MacOS)


Note:
Keyboard configuration is better done directly through the Desktop installer as there are some known issues with *localectl* on Ubuntu 24.04 (see: [localectl: Failed to read list of keymaps](https://www.claudiokuenzler.com/blog/1257/how-to-fix-missing-keymaps-debian-ubuntu-localectl-failed-read-list)).


## Ubuntu Server

Basic setup and configuration on a fresh Ubuntu Server installation (tested on Ubuntu Server 24.04 LTS on a Raspberry PI 5).

```
sudo wget -O - https://raw.githubusercontent.com/fabiengaubert/linux_configuration/refs/heads/main/ubuntu_server_install.sh | sudo bash
```

It will install:
- vim
- net-tools
- build-essential
- Docker