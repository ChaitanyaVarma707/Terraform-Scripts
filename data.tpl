#!/bin/bash
sudo su
apt update -y
apt install -y apache2
systemctl status apache2
systemctl enable apache2
echo "<h1> At $(hostname -f) </h1>" > /var/www/html/index.html
