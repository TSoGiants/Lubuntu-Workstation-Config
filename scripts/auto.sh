xbacklight -set 60

killall syndaemon
syndaemon -i 0.2 -KRd

sudo update-alternatives --config x-www-browser /usr/bin/google-chrome-stable
sudo update-alternatives --config gnome-www-browser /usr/bin/google-chrome-stable
sudo export BROWSER=/usr/bin/google-chrome-stable

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-on-battery -s 9 -t uint --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-level-on-battery -s 60 -t uint --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled -s false -t bool --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-off -s 0 -t uint --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-sleep -s 0 -t uint --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-battery-off -s 0 -t uint --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-battery-sleep -s 0 -t uint --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lock-screen-suspend-hibernate -s false -t bool --create
