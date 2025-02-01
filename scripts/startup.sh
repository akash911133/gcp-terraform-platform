#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo chkconfig nginx on 
sudo echo "Hello this is a Application Server" >> /var/www/html/index.html
sudo service nginx restart
