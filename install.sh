#!/bin/bash
# Zsh
[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.backup
cp zsh/.zshrc $HOME/.zshrc
cp zsh/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
cp zsh/config.zsh $HOME/.oh-my-zsh/custom/config.zsh
cp zsh/env.zsh $HOME/.oh-my-zsh/custom/env.zsh
cp zsh/path.zsh $HOME/.oh-my-zsh/custom/path.zsh
cp zsh/window.zsh $HOME/.oh-my-zsh/custom/window.zsh
cp zsh/.p10k.zsh $HOME/.p10k.zsh

# .gitconfig
[ -f $HOME/.gitconfig ] && mv $HOME/.gitconfig $HOME/.gitconfig.backup
cp git/.gitconfig $HOME/.gitconfig

# tmux.conf
[ -f $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
cp tmux/.tmux.conf $HOME/.tmux.conf

# Vim
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.backup
cp vim/vimrc $HOME/.vimrc

[ -f $HOME/.vimbundle ] && mv $HOME/.vimbundle $HOME/.vimbundle.backup
cp vim/vimbundle $HOME/.vimbundle

# Ensure dirs present
mkdir -p $HOME/.vim/autoload
mkdir -p $HOME/.vim/colors

# Get colors and plug
cp vim/colors/sonokaimore.vim $HOME/.vim/colors/sonokaimore.vim
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $HOME/.vim/autoload/plug.vim
