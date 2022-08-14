# Update WSL
    https://www.how2shout.com/linux/how-to-upgrade-wsl-2-or-1-ubuntu-20-04-to-22-04-lts/

# Essential Installations
    sudo apt update
    sudo apt upgrade
    sudo apt install -y build-essential
    sudo apt install -y python3
    sudo apt install -y python3-pip
    sudo apt install -y clang
    sudo apt install -y lua5.4
    sudo apt install -y zip
    sudo apt install -y tmux
    sudo apt install -y exa
    sudo apt install -y stow

# Install Fish
    sudo apt install -y fish

# Install Fish Extensions
<!-- -->
	# Make .config dir if it doesn't exist
	mkdir -p ~/.config/fish
<!-- -->
	# Set fish as default shell
	echo /usr/bin/fish | sudo tee -a /etc/shells
	chsh -s /usr/bin/fish
<!-- -->
	# Download starfish
	curl -sS https://starship.rs/install.sh | sh
<!-- -->
	# Set starfish as default theme
	echo "starship init fish | source" > ~/.config/fish/config.fish
<!-- -->
	# On fish, install fisher
	fish
	curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
<!-- -->
	# Install nvm for fish
	fisher install jorgebucaran/nvm.fish
<!-- -->
	# Install node
	nvm install latest
<!-- -->
	# Set node default version on all shells
	set --universal nvm_default_version latest
<!-- -->
	# Install z for fish
	fisher install jethrokuan/z
<!-- -->

# Install neovim
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install -y neovim

# Install Live Server for Node
    npm i -g live-server

# Install Git
    sudo add-apt-repository ppa:git-core/ppa
    sudo apt update
    sudo apt install -y git

# Configure Git
    git config --global user.name "Your Name"
    git config --global user.email "yourname@example.com"
    git config --global init.defaultBranch main
    git config --global color.ui auto
    ssh-keygen -t ed25519 -C <youremail>
    cat ~/.ssh/id_ed25519.pub
    # Copy key and put on github

# Change neovim folder permissions
    sudo chown -R <user>:<user> ~/.config/nvim
    
### OBS: Implement later
    Keyboard shortcuts: tree, sniprun, exa alias