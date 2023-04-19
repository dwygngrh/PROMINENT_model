# PROMINENT_model
# Install model ROMS COAWST di server


#!/bin/bash

# Code buat install library parallel di server,PC atau laptop dengan Intel

set +x
#
mkdir ${HOME}/library
mkdir ${HOME}/library/parallel
mkdir ${HOME}/library/src

FC=ifort
CC=icc
CXX=icpc

#src dir
SRCDIR=${HOME}/library/src

##install dir
INSDIR=${HOME}/library

sudo apt-get install -y php-posix

