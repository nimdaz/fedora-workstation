#!/bin/echo source this file in a bash script: 

rpms=(
	'neovim'
	'gnome-tweaks'
	'restic'
	'hardinfo2'
)

flatpaks_fedora=()

flatpaks_flathub=(
	# System & tools
	'com.github.tchx84.Flatseal'
	'io.github.flattool.Warehouse'
	'org.gnome.Extensions'
	'com.github.wwmm.easyeffects'
	'org.gnome.Firmware'

	# General apps
	'org.videolan.VLC'
	'com.bitwarden.desktop'
	'org.signal.Signal'
	'com.spotify.Client'
	'com.github.PintaProject.Pinta' # Replaces Krita
	'io.trezor.suite'
	'com.visualstudio.code'
	'com.github.iwalton3.jellyfin-media-player'
	'org.keepassxc.KeePassXC'
	'org.tenacityaudio.Tenacity'
)

gnome_extensions=(
	'dash-to-panel@jderose9.github.com'
	'tilingshell@ferrarodomenico.com'
)

gnome_settings=(
	# Use `dconf watch /` to detect what GUI changes trigger.

	# Add min,max,close buttons in windows
	'org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"'

	# Lock screen notifications
	'org.gnome.desktop.notifications show-in-lock-screen false'

	# Lock screen time
	'org.gnome.desktop.session idle-delay 1800'

	# Theme
	'org.gnome.desktop.interface color-scheme prefer-dark'
	'org.gnome.desktop.interface accent-color orange'
)
