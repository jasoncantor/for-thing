echo "deb https://repo.logdna.com stable main" | sudo tee /etc/apt/sources.list.d/logdna.list
wget -O- https://repo.logdna.com/logdna.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install logdna-agent < "/dev/null" 
sudo logdna-agent -k 3c8ab342b9a87b9042f23a444886db1c
sudo logdna-agent -t ethan
sudo update-rc.d logdna-agent defaults
sudo /etc/init.d/logdna-agent start
