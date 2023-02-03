#!/bin/sh


if [ $1 = 'l' ]; then
# Light
  sed -i 's/theme = ".*"/theme = "onelight"/' ${HOME}/.config/helix/config.toml
  sed -i 's/color_scheme = ".*"/color_scheme = "light"/' ${HOME}/.config/wezterm/wezterm.lua
  pkill -10 hx

else
# Dark
  sed -i 's/theme = ".*"/theme = "onedark"/' ${HOME}/.config/helix/config.toml
  sed -i 's/color_scheme = ".*"/color_scheme = "dark"/' ${HOME}/.config/wezterm/wezterm.lua
  pkill -10 hx
fi 