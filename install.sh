echo If you see errors, run the script as ROOT. this script only works for archlinux at the current moment, scripts for other distros are coming.
echo the script will start in 10 seconds. press CTRL+C to cancel.
sleep 5
echo the script will start in 5 seconds.
sleep 5 
echo starting script
pacman -S --noconfirm  xfce4-panel xfdesktop xfwm4 thunar xfce4-settings
cd /bin
touch custom_de.sh
echo "xfce4-panel &
xfdesktop &
xfwm4" >> custom_de.sh
chmod +x custom_de.sh
cd /usr/share/xsessions
touch custom_de.desktop
echo "[Desktop Entry]
Name=TSDE
Comment=The Smallest Desktop Environment
Exec=/bin/custom_de.sh
Type=Application" >> custom_de.desktop
echo DOne! log out into TSDE!
