#!/usr/bin/env bash

dir=`pwd`
if [ ! -e "${dir}/$(basename $0)" ]; then
  echo "Script not called from within repository directory. Aborting."
  exit 2
fi

ln -sfn "${dir}/bashrc" "${HOME}/.bashrc"
ln -sfn "${dir}/gitconfig" "${HOME}/.gitconfig"
ln -sfn "${dir}/vimrc" "${HOME}/.vimrc"
ln -sfn "${dir}/xbindkeysrc" "${HOME}/.xbindkeysrc"
ln -sfn "${dir}/xprofile" "${HOME}/.xprofile"
ln -sfn "${dir}/Xresources" "${HOME}/.Xresources"

ln -sfn "${dir}/gtk-3.0" "${HOME}/.config/"
ln -sfn "${dir}/i3" "${HOME}/.config/"
ln -sfn "${dir}/neofetch" "${HOME}/.config/"
ln -sfn "${dir}/redshift" "${HOME}/.config/"
ln -sfn "${dir}/termite" "${HOME}/.config/"

## TODO - wget vim colorscheme to vim directory
