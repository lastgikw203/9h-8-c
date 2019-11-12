
apt-get -y upgrade &&
apt install -y whiptail cron bzip2 &&
cd /etc/pam.d/ &&
sed -i "s/required/sufficient/g" cron &&
cd ~ &&
/etc/init.d/cron restart &&
git clone https://github.com/MauroS5/9Hits-AutoInstall.git &&
chmod -R 777 9Hits-AutoInstall &&
9Hits-AutoInstall/install.sh "2" "7081ae5435ea52a14c421c9a0a53e136" "3" "15" &&
rm install.sh
