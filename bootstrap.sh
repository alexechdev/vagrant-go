#! /bin/bash

echo "SSH Setup:"

echo " "
echo "-------------------------------------------"
echo "Updating..."
echo "-------------------------------------------"
echo " "
sudo apt-get update

echo " "
echo "-------------------------------------------"
echo "Installing Apache..."
echo "-------------------------------------------"
echo " "
sudo apt-get install -y apache2

echo " "
echo "-------------------------------------------"
echo "Installing Git..."
echo "-------------------------------------------"
echo " "
sudo apt-get install -y git

echo " "
echo "-------------------------------------------"
echo "Downloading Go..."
echo "This maybe take a minutes, if this take an hour abort!!!"
echo " "
sudo curl -O -s https://storage.googleapis.com/golang/go1.4.1.linux-amd64.tar.gz

echo "Unpacking Go..."
sudo tar -C /usr/local -xzf go1.4.1.linux-amd64.tar.gz

echo "Installing & Configuring Go..."
sudo echo "export GOPATH=/var/www" >> /home/vagrant/.profile
sudo echo "export PATH=$PATH:/home/vagrant/go/bin:/usr/local/go/bin" >> /home/vagrant/.profile

source /home/vagrant/.profile

sudo chown -R vagrant:vagrant /var/www

echo " "
echo "-------------------------------------------"
echo " "
echo "Enjoy the power of Go"
go version
echo " "
echo "by Alex Ech"
echo "Find me on https://github.com/alexechdev"
echo " "
echo "-------------------------------------------"
echo " "