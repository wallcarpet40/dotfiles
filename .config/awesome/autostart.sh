#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI-A-0 --mode 3840x2160 --pos 0x0 --rotate normal --rate 60 --dpi 144"
run "xrandr --output HDMI-A-0 --mode 3840x2160 --set "scaling mode" "None" --pos 0x0 --rotate normal --rate 60 --dpi 144"
#run "xrandr --output DisplayPort-0 --mode 3840x2160 --set "vrr_capable" 1 --set "TearFree" on --set "scaling mode" "None" --pos 0x0 --rotate normal --rate 60 --dpi 144"
#run "xrandr --output DisplayPort-0 --mode 1920x1080 --set "freesync" 1 --set TearFree on --set "scaling mode" "None" --pos 0x0 --rotate normal --rate 60"
run "nm-applet"
#run "caffeine"
run "pamac-tray"
#run "variety"
run "xfce4-power-manager"
#run "blueberry-tray"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "numlockx on"
#run "psensor"
#run "volumeicon"
#run "nitrogen --restore"
#run "conky -c $HOME/.config/awesome/system-overview"

#run applications from startup
#run "firefox"
#run "atom"
#run "dropbox"
#run "insync start"
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"
