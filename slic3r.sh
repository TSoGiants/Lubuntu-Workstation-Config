echo "Installing Slic3r"

sudo apt-get install --force-yes -y git build-essential libgtk2.0-dev libwxgtk2.8-dev libwx-perl libmodule-build-perl libnet-dbus-perl libexpat1-dev

sudo apt-get install --force-yes -y libxmu-dev freeglut3-dev libwxgtk-media2.8-dev

wget http://dl.slic3r.org/linux/slic3r-linux-x86_64-1-2-9-stable.tar.gz
sudo tar -xzvf slic3r-linux-x86_64-1-2-9-stable.tar.gz
rm slic3r-linux-x86_64-1-2-9-stable.tar.gz
sudo chmod go+x ./Slic3r/lib/vrt/528ccea98cad02a5f453a7135f9ca183/
sudo mv Slic3r /usr/bin/
wget http://www.tsogiants.org/mpw_files/slic3r.desktop
sudo mv slic3r.desktop /usr/share/applications

wget http://www.tsogiants.org/mpw_files/slic3r.tar.gz
sudo tar -xzvf slic3r.tar.gz
rm slic3r.tar.gz
sudo mv slic3r /etc/guest-session/

sudo apt-get install --force-yes -y gpx
