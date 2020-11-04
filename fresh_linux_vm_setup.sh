#sublime text apt source
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update
yes | sudo apt install --ignore-missing virtualbox-guest-dkms virtualbox-guest-x11        
yes | sudo apt install --ignore-missing terminator cmake git emacs mlocate net-tools htop tree colordiff \
						openssh-server python3-pip python-is-python3 python3-venv\
						sublime-text