
# Dotfiles

This repository contains my personal dotfiles. These dotfiles are managed with [stow](https://www.gnu.org/software/stow/), which allows for easy installation and management of configurations.

## Setup Instructions

### 1. Clone the Repository

Clone this repository into your home directory:
```bash
git clone https://github.com/edrude/dotfiles.git ~/dotfiles
```

### 2. Install Stow

If you don't already have [stow](https://www.gnu.org/software/stow/) installed, install it using your package manager:


### 3. Symlink the Dotfiles Using Stow

Navigate to your `dotfiles` directory and use `stow` to create symlinks for the dotfiles:

```bash
cd ~/dotfiles
stow .
```

This will symlink almost all of the files to your home directory

### 4. Install Untracked Dependencies
```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

### Uninstall

To remove the symlinks, simply use `stow` with the `-D` flag:

```bash
cd ~/dotfiles
stow -D .
```

This will remove all the symlinks created earlier.
