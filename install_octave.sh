#!/bin/bash

# Code buat install OCTAVE
set +x
#
SRCDIR=${HOME}/library/src
###############
mkdir ${HOME}/library/octave
### install dir
INSDIR=${HOME}/library/octave
### install octave
cd ${SRCDIR}
version=8.2.0
#wget https://ftp.gnu.org/gnu/octave/octave-${version}.tar.gz
tar -xf octave-${version}.tar.gz 
cd octave-${version}
./configure --prefix=${INSDIR}
make -j 4
make install
echo 'export PATH='${HOME}'/library/octave/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH='${HOME}'/library/octave/lib:$LD_LIBRARY_PATH'  >> ~/.bashrc
#
source ~/.bashrc
cd ..
