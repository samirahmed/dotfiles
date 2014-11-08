#  Dot Files for SamirAhmed

Inspired by [ryanb](https://github.com/ryanb/dotfiles) and [skwp](https://github.com/skwp/dotfiles) 

## Install

```
git clone https://github.com/samirahmed/dotfiles.git
cd dotfiles
git submodules init
git submodules update
rake install
```

## What does it do? 

Vim Plugins - to make your vim look like this
![vim sample](http://i.imgur.com/W6vjEs5.png)

I use zsh and in particular oh-my-zsh

OSX and Linux compatible

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.bin
unlink ~/.gitignore
unlink ~/.vim
unlink ~/.vimrc
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

