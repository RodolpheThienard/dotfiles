#!/bin/sh


if [ $1 = 'l' ]; then
# Light
  # Helix
  sed -i 's/theme = ".*"/theme = "spacebones_light"/' ${HOME}/.config/helix/config.toml
  # Wezterm
  sed -i 's/color_scheme = ".*"/color_scheme = "light"/' ${HOME}/.config/wezterm/wezterm.lua
  # I3
  sed -i 's/background #21252D/background #FFFADE/' ${HOME}/.config/i3/config
  sed -i 's/separator #FFFADE/separator #21252D/' ${HOME}/.config/i3/config
  sed -i 's/statusline #FFFADE/statusline #21252D/' ${HOME}/.config/i3/config
  sed -i 's/wallpaper.jpg/wallpaper-light.png/' ${HOME}/.config/i3/config
  gsettings set org.gnome.desktop.interface color-scheme prefer-light
  i3-msg restart >> /dev/null
  pkill -10 hx

else
# Dark
  # Helix
  sed -i 's/theme = ".*"/theme = "onedark"/' ${HOME}/.config/helix/config.toml
  # Wezterm
  sed -i 's/color_scheme = ".*"/color_scheme = "dark"/' ${HOME}/.config/wezterm/wezterm.lua
  # I3
  sed -i 's/background #FFFADE/background #21252D/' ${HOME}/.config/i3/config
  sed -i 's/separator #21252D/separator #FFFADE/' ${HOME}/.config/i3/config
  sed -i 's/statusline #21252D/statusline #FFFADE/' ${HOME}/.config/i3/config
  sed -i 's/wallpaper-light.png/wallpaper.jpg/' ${HOME}/.config/i3/config
  gsettings set org.gnome.desktop.interface color-scheme prefer-dark
  i3-msg restart >> /dev/null
  pkill -10 hx
fi 