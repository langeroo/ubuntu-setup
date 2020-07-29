#sublime text apt source
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update

while true; do
    read -p "Are you running a VirtualBox VM? (y/n): " yn
    case $yn in
        [Yy]* ) yes | sudo apt install virtualbox-guest-dkms virtualbox-guest-x11; break;;
        [Nn]* ) echo "Skipping VB guest additions. Continuing with installation..."; break;;
        * ) echo "Please answer y or n.";;
    esac
done

yes | sudo apt install  terminator cmake git emacs mlocate net-tools htop tree colordiff \
						openssh-server python3-pip python-is-python3 python3-venv\
						sublime-text

