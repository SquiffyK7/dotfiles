#!/usr/bin/env bash

./dependencies.sh

if [[ "$?" != "0" ]]; then
  exit $?
fi

mkdir -p "$HOME/.config/i3"
ln -sf "$DOTFILES/i3/config"                  "$HOME/.config/i3/config"
