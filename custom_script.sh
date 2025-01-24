#!/bin/echo source this file in a bash script: 

log "Uninstalling default apps:"
log "krita, totem"
flatpak uninstall org.kde.krita
sudo dnf remove -y totem

log "### Manual config ###"
echo "Firefox: Setup profiles"
echo "Firefox: Create custom shortcut for: firefox --ProfileManager"
echo "Syncthing: Setup through http://127.0.0.1:8384"
echo "Set VLC as default videoplayer" 
echo "setup vscode: python/jupyter/etc" 
echo "setup syncthing: add the NAS as introducer, set defaults, etc."
