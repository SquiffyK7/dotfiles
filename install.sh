#!/usr/bin/env bash

source ./zsh/zshenv

mkdir -p "$ZDOTDIR"
ln -sf "$DOTFILES/zsh/zshenv"                 "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/zshrc"                  "$ZDOTDIR/.zshrc"

mkdir -p "$HOME/.config/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf"             "$HOME/.config/tmux/tmux.conf"

ln -sf "$DOTFILES/bash/bashrc"                "$HOME/.bashrc"

mkdir -p "$HOME/.config/i3"
ln -sf "$DOTFILES/i3/config"                  "$HOME/.config/i3/config"
ln -sf "$DOTFILES/i3/status.conf"             "$HOME/.config/i3/status.conf"

ln -sf "$DOTFILES/xorg/xbindkeysrc"           "$HOME/.xbindkeysrc"
ln -sf "$DOTFILES/xorg/xprofile"              "$HOME/.xprofile"
ln -sf "$DOTFILES/xorg/Xresources"            "$HOME/.Xresources"

mkdir -p "$HOME/.config/neofetch"
ln -sf "$DOTFILES/neofetch/config.conf"       "$HOME/.config/neofetch/config.conf"

mkdir -p "$HOME/.config/gtk-3.0"
ln -sf "$DOTFILES/gtk-3.0/bookmarks"          "$HOME/.config/gtk-3.0/bookmarks"
ln -sf "$DOTFILES/gtk-3.0/settings.ini"       "$HOME/.config/gtk-3.0/settings.ini"

mkdir -p "$HOME/.config/lxterminal"
ln -sf "$DOTFILES/lxterminal/lxterminal.conf" "$HOME/.config/lxterminal/lxterminal.conf"

mkdir -p "$HOME/.config/redshift"
ln -sf "$DOTFILES/redshift/redshift.conf"     "$HOME/.config/redshift/redshift.conf"

mkdir -p "$HOME/.config/git"
ln -sf "$DOTFILES/git/config"                 "$HOME/.config/git/config"

mkdir -p "$HOME/.config/xfce4"
for DIR in $(find "$DOTFILES/xfce4" -type d); do mkdir -p "$HOME/.config/${DIR#$DOTFILES/}"; done
for FILE in $(find "$DOTFILES/xfce4" -type f); do ln -sf $FILE "$HOME/.config/${FILE#$DOTFILES/}"; done

mkdir -p "$HOME/.vim/colors"
ln -sf "$DOTFILES/vim/vimrc"                  "$HOME/.vimrc"
ln -sf "$DOTFILES/vim/colors/onedark.vim"     "$HOME/.vim/colors/onedark.vim"

mkdir -p "$HOME/.config/fontconfig"
ln -sf "$DOTFILES/fontconfig/fonts.conf"      "$HOME/.config/fontconfig/fonts.conf"
