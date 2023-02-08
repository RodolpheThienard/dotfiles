#!/bin/sh


if [ $1 = 'l' ]; then
# Light
  # Helix
  sed -i 's/theme = ".*"/theme = "spacebones_light"/' ${HOME}/.config/helix/config.toml
  # Wezterm
  sed -i 's/color_scheme = ".*"/color_scheme = "light"/' ${HOME}/.config/wezterm/wezterm.lua
  # I3
  sed -i 's/background #282C34/background #fbf8ef/' ${HOME}/.config/i3/config
  sed -i 's/separator #fbf8ef/separator #282C34/' ${HOME}/.config/i3/config
  sed -i 's/statusline #fbf8ef/statusline #282C34/' ${HOME}/.config/i3/config
  i3-msg reload
  pkill -10 hx

else
# Dark
  # Helix
  sed -i 's/theme = ".*"/theme = "onedark"/' ${HOME}/.config/helix/config.toml
  # Wezterm
  sed -i 's/color_scheme = ".*"/color_scheme = "dark"/' ${HOME}/.config/wezterm/wezterm.lua
  # I3
  sed -i 's/background #fbf8ef/background #282C34/' ${HOME}/.config/i3/config
  sed -i 's/separator #282C34/separator #fbf8ef/' ${HOME}/.config/i3/config
  sed -i 's/statusline #282C34/statusline #fbf8ef/' ${HOME}/.config/i3/config
  i3-msg reload
  pkill -10 hx
fi 