#!/bin/bash
 UPDATE_NAME="System Update"
 notify-send "System Update" "Do you want to proceed with the system update? (Yes/No)"
 answer=$(dmenu -p "Do you want to update? (Yes/No)")
 if [[ "$answer" == "Yes" || "$answer" == "yes" ]]; then
notify-send "System Update" "Updating system, please wait..."
  if [ -f /etc/os-release ]; then
source /etc/os-release
fi
  case $ID in
ubuntu|debian)
notify-send "System Update" "Updating packages on Debian/Ubuntu-based system."
sudo apt update && sudo apt upgrade -y
;;
arch|manjaro|archlinux)
notify-send "System Update" "Updating packages on Arch-based system."
sudo pacman -Syu --noconfirm
;;
fedora)
notify-send "System Update" "Updating packages on Fedora-based system."
sudo dnf upgrade --refresh -y
;;
openSUSE)
notify-send "System Update" "Updating packages on openSUSE-based system."
sudo zypper update -y
;;
gentoo)
notify-send "System Update" "Updating packages on Gentoo-based system."
sudo emerge --sync && sudo emerge -uD @world
;;
*)
notify-send "System Update" "Unsupported distribution: $ID. Unable to update."
exit 1
;;
esac
  notify-send "System Update" "Update completed successfully!"
elsenotify-send "System Update" "Update cancelled by user."
fi
