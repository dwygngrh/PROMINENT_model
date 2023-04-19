#!/bin/bash

# Code buat install library parallel di server,PC atau laptop dengan GFORTRAN
set +x
#
###############
mkdir ${HOME}/library
mkdir ${HOME}/library/parallel
mkdir ${HOME}/library/src
chmod +R ${HOME}/library
###############
FC=gfortran
CC=gcc
CXX=g++
#
### src dir
SRCDIR=${HOME}/library/src
#
### install dir
INSDIR=${HOME}/library
#
### install openMPI
cd ${SRCDIR}
openMPI=openmpi-4.1.4
wget https://download.open-mpi.org/release/open-mpi/v4.1/${openMPI}.tar.gz
tar -xf ${openMPI}.tar.gz 
cd ${openMPI}
CC=${CC} CXX=${CXX} FC=${FC} ./configure --prefix=${INSDIR}
make && make install
cd
#
echo 'export PATH='${HOME}'/library/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH='${HOME}'/library/lib:$LD_LIBRARY_PATH'  >> ~/.bashrc
#
source ~/.bashrc

echo 'logout linux dan login lagi'
read -p "Press any key to continue... " -n1 -s


