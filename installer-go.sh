#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade

cd /tmp
wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz
sudo tar -zxvf go1.19.4.linux-amd64.tar.gz -C /usr/local/
sudo mv go /usr/local

echo "export PATH=/usr/local/go/bin:${PATH}" | sudo tee /etc/profile.d/go.sh
export PATH=$PATH:/usr/local/go/bin
sudo apt install go-glang
