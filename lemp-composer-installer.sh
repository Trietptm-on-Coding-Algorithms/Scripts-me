#!/bin/bash

# Prepare Ubuntu Linux
echo ""
echo "***********************"
echo "Preparing Ubuntu Linux"
echo "***********************"
sudo apt update && sudo apt dist-upgrade && sudo apt autoremove -y

# Install and start Nginx
echo ""
echo "************************"
echo "****Installing Nginx****"
echo "************************"
sudo apt install nginx -y

# Install and start MariaDB Database Server
echo ""
echo "************************"
echo "***Installing MariaDB***"
echo "************************"
sudo apt install mariadb-server mariadb-client -y


# Install PHP 7.2, PHP7.2-FPM, PHP-FPM and Related Modules
echo ""
echo "************************"
echo "***Installing php7.2***"
echo "************************"
sudo apt install php7.2 -y
sudo apt install php7.2-fpm php7.2-mysql php7.2-curl php7.2-gd php7.2-bz2 php7.2-mbstring php7.2-xml php7.2-zip -y
sudo apt install php-fpm php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-zip php-curl -y

echo ""
echo "************************"
echo "**Installing Composer***"
echo "************************"

## First install php-cli, unzip, git, curl, php-mbstring
sudo apt install curl git unzip -y 
## Downloading and installing Composer
cd ~/Downloads
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
