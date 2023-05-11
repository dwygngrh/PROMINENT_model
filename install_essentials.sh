#!/bin/bash

# Code buat install library parallel di server,PC atau laptop dengan GFORTRAN

set +x
# Be carefull, will build all directory in root access
sudo apt-get update
sudo apt install build-essential
sudo apt install gfortran
sudo apt-get install ncview
sudo apt-get install -y php-posix
sudo apt-get -y install nco
sudo apt install git
sudo apt install x11-apps
sudo apt-get install m4
