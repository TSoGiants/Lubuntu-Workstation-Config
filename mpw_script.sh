# This script customizes the ASUS E402M Laptop into a TSoG Mobile Programming Workstation (MPW) #
# The laptop must first have a clean install of Lubuntu 15.10 (AMD 64)                          #
# Copyright 2016 The Shoulders of Giants, Inc.; Script prepared by Dr. Steven J. Foland         #

#################################
# Remove Unnecessary Applications
#################################

echo "Removing Simple Scan"
sudo apt-get -y remove simple-scan

echo "Removing Pidgin"
sudo apt-get -y remove pidgin

echo "Removing Sylpheed"
sudo apt-get -y remove sylpheed

echo "Removing Transmission"
sudo apt-get -y remove transmission
sudo apt-get -y remove transmission-gtk

echo "Removing AbiWord"
sudo apt-get -y remove abiword

echo "Removing Gnumeric"
sudo apt-get -y remove gnumeric

echo "Removing GNOME MPlayer"
sudo apt-get -y remove mplayer
sudo apt-get -y remove mplayer2

echo "Removing guvcview"
sudo apt-get -y remove guvcview

echo "Removing XFburn"
sudo apt-get -y remove xfburn

echo "All unnecessary applications removed. Cleaning up dependencies."
sudo apt-get -y autoremove

#############################
# Install Supporting Programs
#############################

sudo apt-get -y update
sudo apt-get -y upgrade

echo "Installing Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo dpkg -i google-chrome-stable_current_amd64.deb 
sudo apt-get -f -y install
rm google-chrome-stable_current_amd64.deb 

echo "Installing Libre Office"
sudo apt-get -y install libreoffice
sudo apt-get -y install libreoffice-gnome

echo "Installing VLC Media Player"
sudo apt-get -y install vlc

echo "Installing Gimp"
sudo apt-get -y install gimp

echo "All supporting applications installed. Cleaning up dependencies."
sudo apt-get -y autoremove

##################################
# Install Programming Environments
##################################

echo "Installing Scratch"
sudo apt-get -y install scratch

echo "Installing Geany"
sudo apt-get -y install geany

echo "Installing Vim"
sudo apt-get -y install vim

echo "Installing Emacs"
sudo apt-get -y install emacs

echo "Installing Netbeans"
sudo apt-get -y install netbeans

echo "Installing Eclipse"
sudo apt-get -y install eclipse

echo "Installing gedit"
sudo apt-get -y install gedit

echo "Installing Build-Essential (gcc, g++, and make)"
sudo apt-get -y install build-essential

echo "Installing Ruby"
sudo apt-get -y install ruby-full

echo "Installing node.js and npm"
sudo apt-get -y install nodejs npm

echo "Installing Java"
sudo apt-get -y install default-jdk

echo "Installing Python"
# Process taken from:
# https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/
# Should work for Python 3.7.3 as of 6/6/2019
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get -y install python3.7

echo "Installing Spyder"
sudo apt-get -y install spyder

echo "Installing Git"
sudo apt-get -y install git

echo "Installing NetLogo"
wget https://ccl.northwestern.edu/netlogo/6.1.0/NetLogo-6.1.0-64.tgz
sudo tar -xzvf NetLogo-6.1.0-64.tgz
rm NetLogo-6.1.0-64.tgz
chmod +x ./netlogo-6.1.0-64/NetLogo
chmod +x ./netlogo-6.1.0-64/NetLogo3D
sudo mv netlogo-6.1.0-64/ /usr/bin/
wget http://www.tsogiants.org/mpw_files/netlogo.desktop
wget http://www.tsogiants.org/mpw_files/netlogo3D.desktop
wget http://www.tsogiants.org/mpw_files/netlogo.png
sudo mv netlogo.desktop /usr/share/applications
sudo mv netlogo3D.desktop /usr/share/applications
sudo mv netlogo.png /usr/bin/netlogo-5.3-64/

echo "Installing Arduino"
sudo apt-get -y install arduino arduino-core

echo "Installing Energia"
wget http://energia.nu/files/71-ti-permissions.rules
sudo mv 71-ti-permissions.rules /etc/udev/rules.d/
wget http://energia.nu/downloads/downloadv3.php?file=energia-0101E0017-linux64.tgz
sudo tar -xzvf downloadv3.php?file=energia-0101E0017-linux64.tgz
rm downloadv3.php?file=energia-0101E0017-linux64.tgz
chmod +x ./energia-0101E0017/energia
mv ./energia-0101E0017/lib/librxtxSerial.so ./energia-0101E0017/lib/librxtxSerial32.so
mv ./energia-0101E0017/lib/librxtxSerial64.so ./energia-0101E0017/lib/librxtxSerial.so 
sudo mv energia-0101E0017/ /usr/bin/
wget http://www.tsogiants.org/mpw_files/energia.desktop
wget http://www.tsogiants.org/mpw_files/energia.png
sudo mv energia.desktop /usr/share/applications
sudo mv energia.png /usr/bin/energia-0101E0017/
###
sudo apt-get -y install binutils-msp430
sudo apt-get -y install gcc-msp430
sudo apt-get -y install gdb-msp430
sudo apt-get -y install msp430-libc
sudo apt-get -y install msp430mcu
sudo apt-get -y install mspdebug
sudo apt-get -y install srecord
sudo apt-get -y install libsrecord-dev
sudo apt-get -y install libgmp-dev

echo "All progamming environments installed. Cleaning up dependencies."
sudo apt-get -y autoremove

#########################
# Configure User Accounts
#########################

echo "Removing App Armor"
sudo apt-get -y remove apparmor

wget http://www.tsogiants.org/mpw_files/lightdm.conf
sudo mv lightdm.conf /etc/lightdm/

sudo mkdir /etc/guest-session/
wget http://www.tsogiants.org/mpw_files/prefs.sh
sudo mv prefs.sh /etc/guest-session/
wget http://www.tsogiants.org/mpw_files/auto.sh
sudo mv auto.sh /etc/guest-session/
sudo usermod -a -G dialout $USER

wget http://www.tsogiants.org/mpw_files/google-chrome.tgz
sudo tar -xzvf google-chrome.tgz
rm google-chrome.tgz
sudo mv google-chrome/ /etc/guest-session/


##############################
# Configure Inputs and Display
##############################

sudo apt-get -y install xbacklight
sudo apt-get -y install xdotool
sudo apt-get -y install xbindkeys
wget http://www.tsogiants.org/mpw_files/.xbindkeysrc
sudo cp .xbindkeysrc /etc/skel/


###################
# Configure Desktop
###################

wget http://www.tsogiants.org/mpw_files/mpw_wallpaper.png
sudo mv mpw_wallpaper.png /usr/share/lubuntu/wallpapers/lubuntu-default-wallpaper.png
wget http://www.tsogiants.org/mpw_files/mpw_wallpaper.jpg
sudo mv mpw_wallpaper.jpg /usr/share/lubuntu/wallpapers/lubuntu-default-wallpaper.jpg








