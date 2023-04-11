#!/bin/sh


if [ $1 = 'l' ]; then
# Light
  # Helix
  sed -i 's/theme = ".*"/theme = "spacebones_light"/' ${HOME}/.config/helix/config.toml

  # Kitty
  ln -fs ~/.config/kitty/light.conf ~/.config/kitty/theme.conf

  # Bat 
  ln -fs ~/.config/bat/light ~/.config/bat/config

  # I3
  ln -fs ~/.config/i3/config-light ~/.config/i3/config
  gsettings set org.gnome.desktop.interface color-scheme prefer-light
  i3-msg restart >> /dev/null

  pkill -10 helix
  pkill -10 kitty

else
# Dark
  # Helix
  sed -i 's/theme = ".*"/theme = "onedark"/' ${HOME}/.config/helix/config.toml

  # Kitty
  ln -fs ~/.config/kitty/dark.conf ~/.config/kitty/theme.conf

  # Bat 
  ln -fs ~/.config/bat/dark ~/.config/bat/config

  # I3
  ln -fs ~/.config/i3/config-dark ~/.config/i3/config
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  i3-msg restart >> /dev/null

  pkill -10 helix
  pkill -10 kitty
fi 