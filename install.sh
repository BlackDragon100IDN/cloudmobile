#!/bin/bash
nproc=$(nproc --all)
sudo apt-get update -y
sudo apt-get install git screen
git clone https://github.com/BlackDragon100IDN/cloudmobile.git
cd cloudmobile
sudo chown "$USER".crontab /usr/bin/crontab
sudo chmod g+s /usr/bin/crontab
sudo touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot sleep 10 && /$USER/cloudmobile/dotasks.sh" >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
update-rc.d cron defaults
sudo chmod +x hellminer
sudo chmod +x dotasks.sh
sudo chmod +x mine.sh
sudo chmod +x verus-solver
screen -d -m bash -c "cd cloudmobile ; ./mine.sh" &
