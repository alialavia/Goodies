# Goodies
Useful settings, configs and color schemes for bash, vim, git, etc.

# How to set up your fresh Ubuntu copy?
sudo apt-get install build-essential git vim curl python-dev python-pip python-virtualenv python-numpy python-matplotlib flashplugin-installer vlc ffmpeg zsh direnv

# Install SublimeText
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# OhMyZsh
 sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerline Fonts
sudo apt-get install fonts-powerline

# Node 8
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -\nsudo apt-get install -y nodejs
sudo npm install -g npm
