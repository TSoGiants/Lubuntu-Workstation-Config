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

#########################
# Configure User Accounts
#########################

echo "Removing App Armor"
sudo apt-get -y remove apparmor

##############################
# Configure Inputs and Display
##############################

# No configuration needed in this version of Lubuntu.


###################
# Configure Desktop
###################

sudo mv Lubuntu-Workstation-Config/wallpaper/tsog_wallpaper.png /usr/share/lubuntu/wallpapers/lubuntu-default-wallpaper.png
wget http://www.tsogiants.org/mpw_files/mpw_wallpaper.jpg
sudo mv mpw_wallpaper.jpg /usr/share/lubuntu/wallpapers/lubuntu-default-wallpaper.jpg








