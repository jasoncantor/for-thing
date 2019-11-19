echo "deb https://repo.logdna.com stable main" | sudo tee /etc/apt/sources.list.d/logdna.list
wget -O- https://repo.logdna.com/logdna.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install logdna-agent < "/dev/null" # this line needed for copy/paste
sudo logdna-agent -k 3c8ab342b9a87b9042f23a444886db1c # this is your unique Ingestion Key
# /var/log is monitored/added by default (recursively), optionally add more dirs with:
# sudo logdna-agent -d /path/to/log/folders
# You can configure the agent to tag your hosts with:
# sudo logdna-agent -t mytag,myothertag
sudo update-rc.d logdna-agent defaults
sudo /etc/init.d/logdna-agent start
