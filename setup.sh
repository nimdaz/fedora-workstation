#!/bin/bash
source functions.sh
source config.sh

log "Prompt for sudo permissions:"
sudo /bin/true

install_rpms rpms
install_flatpaks fedora flatpaks_fedora
install_flatpaks flathub flatpaks_flathub
install_gnome_extensions gnome_extensions
set_gnome_settings gnome_settings

install_syncthing
install_mullvad

source custom_script.sh
