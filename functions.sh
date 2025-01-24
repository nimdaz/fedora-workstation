#!/bin/echo source this file in a bash script: 
log(){
	message=$@
	time=$(date +%T)
	echo "[${time}] $message"
}

install_rpms(){
	local -n packages=$1
	if [ -n "${packages}" ]
	then
		log "### Installing ${#packages[@]} RPM packages: ###"
		log "> ${packages[@]}"
		#installed_packages=$(rpm -qa --queryformat "%{NAME}\n")
		sudo dnf install -y ${packages[@]}
	fi

}

install_flatpaks(){
	remote=$1
	local -n flatpaks=$2
	if [ -n "${flatpaks}" ]; then
		log "### Installing ${#flatpaks[@]} packages from remote '${remote}': ###"
		log "${flatpaks[@]}"
		flatpak install $remote ${flatpaks[@]}
	fi
}

install_gnome_extensions(){
	local -n extensions=$1
	if [ -n "${extensions}" ]; then
		log "### Installing ${#extensions[@]} Gnome extensions: ###"
		log "${extensions[@]}"
		gext install ${extensions[@]}
	fi
}


set_gnome_settings(){
	log "### Setting Gnome settings ###"
	local -n settings=$1
	for setting in "${gnome_settings[@]}"; do
		echo "$setting"
		gsettings set $setting
	done
}

install_syncthing(){
	log "### Install Syncthing for $(whoami) ###"
	sudo dnf install -y syncthing
	sudo systemctl enable --now syncthing@$(whoami).service
}

install_mullvad(){
	log "### Install Mullvad VPN & Browser ###"
	sudo dnf config-manager addrepo --from-repofile=https://repository.mullvad.net/rpm/stable/mullvad.repo
	sudo dnf install -y mullvad-vpn mullvad-browser
}

