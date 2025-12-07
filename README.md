
# Dotfiles

This repository contains my personal dotfiles. These dotfiles are managed with [GNU Stow](https://www.gnu.org/software/stow/), which allows for easy installation and management of configurations. I encourage anyone who wants to version control aspects of their home directory to investigate the GNU Stow pattern. I am mostly following in the footsteps of others. See the [blog post](https://tamerlan.dev/how-i-manage-my-dotfiles-using-gnu-stow/) that inspired me.

## Prerequisites
1) Your shell is [Z Shell (zsh)](https://zsh.sourceforge.io/)
2) [Neovim](https://neovim.io/) is available with nvim in your path
3) [Tmux](https://github.com/tmux/tmux/wiki) is available with tmux in your path
4) [GNU Stow](https://www.gnu.org/software/stow/) is available with stow in your path

## Setup Instructions

### 1. Clone the Repository

Clone this repository into your home directory:
```bash
git clone https://github.com/edrude/dotfiles.git ~/dotfiles
```
### 2. Symlink the Dotfiles Using Stow

Navigate to your `dotfiles` directory and use `stow` to create symlinks for the dotfiles:

```bash
cd ~/dotfiles
stow .
```

This will symlink almost all of the files to your home directory. If there are existing conflicts in your home directory they will need to be relocated or deleted. After resolving conflicts you can just run the above again.
### 3. Install Untracked Dependencies

```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
## Other Tasks

### Adopt a file from home directory to dotfiles git repository

```bash
# Ensure the path exists in dotfiles
mkdir -p ~/dotfiles/.config/tmux
# Move file to adopt into place under dotfiles
mv ~/.config/tmux/tmux.conf ~/dotfiles/.config/tmux
# Use stow to redeploy
stow .
```
### Uninstall

To remove the symlinks, simply use `stow` with the `-D` flag:

```bash
cd ~/dotfiles
stow -D .
```

This will remove all the symlinks created earlier.
