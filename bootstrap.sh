#!/usr/bin/env bash

DOTFILES_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Broad strokes
ln -sfv "$DOTFILES_DIR/bash_profile" ~/.bash_profile
ln -sfv "$DOTFILES_DIR/bashrc" ~/.bashrc
ln -sfv "$DOTFILES_DIR/gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES_DIR/gitignore_global" ~/.gitignore_global
ln -sfv "$DOTFILES_DIR/vimrc" ~/.vimrc
ln -sfv "$DOTFILES_DIR/vim" ~/.vim

