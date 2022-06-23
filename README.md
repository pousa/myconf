# myconf

Configuration for personal computers.

Lazy configurations for new ubuntu based machines.

```
sudo apt-get install git tmux fonts-inconsolata
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone pousa/dotfiles
homeshick clone VundleVim/Vundle.vim
homeshick clone Anthony25/gnome-terminal-colors-solarized
homeshick clone seebi/dircolors-solarized
```

Lazy configurations for new MACOS machines.

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
plugins=(git nvm zsh-autosuggestions zsh-syntax-highlighting kubectl)
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_MODE="nerfont-complete"
# to run configuration again
p10k configure 
brew install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim
git clone pousa/dotfiles
cd myconf/dotfiles; mv .vimrc ..gitignore_global $HOME/
```
