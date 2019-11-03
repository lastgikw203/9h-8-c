apt-get -y upgrade &&
apt install -y whiptail cron &&
git clone https://github.com/lastgikw203/last203.git &&
mv -f /root/last203/cron /etc/pam.d/cron &&
rm -rf /root/last203/ &&
git clone https://github.com/MauroS5/9Hits-AutoInstall.git &&
chmod -R 777 9Hits-AutoInstall &&
9Hits-AutoInstall/install.sh "2" "7081ae5435ea52a14c421c9a0a53e136" "7" "15" &&
rm install.sh &&
cron &&
ps -ef
