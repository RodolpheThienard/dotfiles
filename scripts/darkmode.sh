#!/bin/sh


if [ $1 = 'l' ]; then
# Light
  # Helix
  sed -i 's/theme = ".*"/theme = "spacebones_light"/' ${HOME}/.config/helix/config.toml
  # Wezterm
  sed -i 's/color_scheme = ".*"/color_scheme = "light"/' ${HOME}/.config/wezterm/wezterm.lua
  # I3
  ln -fs ~/.config/i3/config-light ~/.config/i3/config
  gsettings set org.gnome.desktop.interface color-scheme prefer-light
  i3-msg restart >> /dev/null
  pkill -10 helix

else
# Dark
  # Helix
  sed -i 's/theme = ".*"/theme = "onedark"/' ${HOME}/.config/helix/config.toml
  # Wezterm
  sed -i 's/color_scheme = ".*"/color_scheme = "dark"/' ${HOME}/.config/wezterm/wezterm.lua
  # I3
  ln -fs ~/.config/i3/config-dark ~/.config/i3/config
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  i3-msg restart >> /dev/null
  pkill -10 helix
fi 