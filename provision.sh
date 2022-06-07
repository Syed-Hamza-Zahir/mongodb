#!/bin/bash


#sudo apt-get update -y

#sudo apt-get upgrade -y


#sudo apt-get install nginx -y

#sudo systemctl enable nginx

#sudo systemctl status nginx



#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

#sudo apt-get install nodejs -y

#sudo apt-get install python-software-properties




# setting up the nginx reverse proxy 
sudo rm /etc/nginx/sites-available/default
sudo ln -s /vagrant/new_default /etc/nginx/sites-available/default



sudo systemctl stop nginx
sudo systemctl start nginx
sudo systemctl enable nginx


cd /vagrant/app/app/app

sudo echo "export DB_HOST=mongodb://192.168.10.150:27017/posts" >> /etc/bash.bashrc
source /etc/bash.bashrc

sudo npm install pm2 -g

node seeds/seed.js

npm install

npm start -d