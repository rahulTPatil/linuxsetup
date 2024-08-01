#!/bin/bash

echo GO setup started....
GO_VERSION=$(curl https://go.dev/VERSION?m=text | head -n1)
echo "$GO_VERSION" is the latest version
wget "https://dl.google.com/go/$GO_VERSION.linux-amd64.tar.gz"
sudo tar -C /usr/local -xzf "$GO_VERSION".linux-amd64.tar.gz
echo export PATH=$PATH:/usr/local/go/bin >> ~/.bashrc
source ~/.bashrc
sudo rm -rf $GO_VERSION.linux-amd64.tar.gz
echo GO setup completed!
