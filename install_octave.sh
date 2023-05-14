#!/bin/bash

# Code buat install OCTAVE
set +x
INSDIR=${HOME}/library/octave
sudo strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
#
### install octave
version=5.2.0
wget https://ftp.gnu.org/gnu/octave/octave-${version}.tar.gz
tar -xzf octave-${version}.tar.gz
cd octave-${version}
./configure --prefix=$INSDIR
make -j 4
make install
echo 'export PATH='${HOME}'/library/octave/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH='${HOME}'/library/octave/lib:$LD_LIBRARY_PATH'  >> ~/.bashrc

###
echo 'logout linux dan login lagi'
read -p "Press any key to continue... " -n1 -s
