# This script customizes the ASUS E402M Laptop into a TSoG Mobile Programming Workstation (MPW) #
# The laptop must first have a clean install of Lubuntu 15.10 (AMD 64)                          #
# Copyright 2016 The Shoulders of Giants, Inc.; Script prepared by Dr. Steven J. Foland         #

#################################
# Remove Unnecessary Applications
#################################

echo "Removing QTPass"
sudo apt-get -y remove qtpass

echo "Removing Compton"
sudo apt-get -y remove compton

echo "Removing Transmission"
sudo apt-get -y remove tranmission-common

echo "Removing Transmission"
sudo apt-get -y remove tranmission-common

echo "Removing Quassel"
sudo apt-get -y remove quassel

echo "Removing Trojita"
sudo apt-get -y remove trojita


echo "All unnecessary applications removed. Cleaning up dependencies."
sudo apt-get -y autoremove

#############################
# Install Supporting Programs
#############################

sudo apt-get -y update
sudo apt-get -y upgrade

echo "Installing Gimp"
sudo apt-get -y install gimp


##################################
# Install Programming Environments
##################################

echo "Installing Scratch"
sudo apt-get -y install scratch

echo "Installing Geany"
sudo apt-get -y install geany

echo "Installing Emacs"
sudo apt-get -y install emacs

echo "Installing Netbeans"
sudo apt-get -y install netbeans

echo "Installing gedit"
sudo apt-get -y install gedit

echo "Installing Ruby"
sudo apt-get -y install ruby-full

echo "Installing node.js and npm"
sudo apt-get -y install nodejs npm

echo "Installing Spyder"
sudo apt-get -y install spyder

echo "Installing NetLogo"
wget https://ccl.northwestern.edu/netlogo/6.1.0/NetLogo-6.1.0-64.tgz
sudo tar -xzvf NetLogo-6.1.0-64.tgz
rm NetLogo-6.1.0-64.tgz
sudo chmod +x NetLogo\ 6.1.0/NetLogo
sudo chmod +x NetLogo\ 6.1.0/NetLogo3D
sudo mv NetLogo\ 6.1.0/ /usr/bin/NetLogo-6.1.0/
sudo mv Lubuntu-Workstation-Config/shortcuts/netlogo.desktop /usr/share/applications
sudo mv Lubuntu-Workstation-Config/shortcuts/netlogo3D.desktop /usr/share/applications
sudo mv Lubuntu-Workstation-Config/shortcuts/icons/netlogo.png /usr/bin/NetLogo-6.1.0/

echo "Installing Arduino"
sudo apt-get -y install arduino arduino-core

echo "Installing Energia"
wget https://s3.amazonaws.com/energiaUS/files/71-ti-permissions.rules
sudo mv 71-ti-permissions.rules /etc/udev/rules.d/
wget http://energia.nu/downloads/downloadv4.php?file=energia-1.8.7E21-linux64.tar.xz
sudo tar -xf downloadv4.php?file=energia-1.8.7E21-linux64.tar.xz
rm downloadv4.php?file=energia-1.8.7E21-linux64.tar.xz
chmod +x energia-1.8.7E21/energia
sudo mv energia-1.8.7E21/ /usr/bin/
sudo mv Lubuntu-Workstation-Config/shortcuts/energia.desktop /usr/share/applications


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



##############################
# Configure Inputs and Display
##############################

# No configuration needed in this version of Lubuntu.


###################
# Configure Desktop
###################

sudo cp Lubuntu-Workstation-Config/wallpaper/tsog_wallpaper.png /usr/share/lubuntu/wallpapers/1804-lubuntu-default-wallpaper.png
sudo cp Lubuntu-Workstation-Config/wallpaper/tsog_wallpaper.png /usr/share/lubuntu/wallpapers/1804-lubuntu-default-wallpaper-h.png

<<<<<<< HEAD
#######################################
# Configure TSoG.tv Collaboration Tools 
#######################################

echo "Installing Discord"
sudo apt-get -y install snapd
sudo snap install discord

echo "Installing Discord Dependencies"
sudo apt install libgconf-2-4 libappindicator1

echo "Installing Github Desktop"
sudo snap install --beta github-desktop --classic

echo "Installing Gnome Twitch Player"
sudo snap install gnome-twitch


# You will have to enter a password and (optionally) a name for this student user manually when prompted.

=======
>>>>>>> parent of 4625c96... Added Discord and TKinter to init.sh

#########################
# Configure User Accounts
#########################

echo "Removing App Armor"
sudo apt-get -y remove apparmor

sudo adduser student

# Grants serial port access.
sudo usermod -a -G dialout $USER

# You will have to enter a password and (optionally) a name for this student user manually when prompted.

##########
# Clean Up
##########

sudo rm -rf Lubuntu-Workstation-Config

echo "Cleaning up final dependencies."
sudo apt-get -y autoremove


echo "Configuration Complete. Please restart now for all changes to take effect."


