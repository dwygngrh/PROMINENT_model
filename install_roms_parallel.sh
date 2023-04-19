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

## install openMPI
cd ${SRCDIR}
openMPI=openmpi-4.1.4
wget https://download.open-mpi.org/release/open-mpi/v4.1/${openMPI}.tar.gz
tar -xf ${openMPI}.tar.gz 
cd ${openMPI}
CC=${CC} CXX=${CXX} FC=${FC} ./configure --prefix=${INSDIR}
make && make install
cd

echo 'export PATH='${HOME}'/library/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH='${HOME}'/library/lib:$LD_LIBRARY_PATH'  >> ~/.bashrc

source ~/.bashrc
pause 'Jika instalasi berhasil tekan [Enter]'
###################

## install zlib
cd ${SRCDIR}
zlib=zlib-1.2.13
wget https://zlib.net/zlib-1.2.13.tar.gz
tar -xvf ${zlib}.tar.gz
cd ${zlib}
CC=icc ./configure --prefix=${INSDIR}
make clean
make && make install
pause 'Jika instalasi berhasil tekan [Enter]'
###################

## install hdf5
cd ${SRCDIR}
hdf5=hdf5-1.12.1
wget https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/hdf5-1.12.1/src/hdf5-1.12.1.tar.gz 
tar -xvf ${hdf5}.tar.gz
cd ${hdf5}
CC=mpicc FC=mpif90 CFLAGS=-fPIC ./configure --enable-shared --enable-parallel --enable-fortran --enable-fortran2003 --with-zlib=${INSDIR} --prefix=${INSDIR}
make clean
make
make install
pause 'Jika instalasi berhasil tekan [Enter]'
####################

## install netcdf-c
cd ${SRCDIR}
wget https://downloads.unidata.ucar.edu/netcdf-c/4.9.0/netcdf-c-4.9.0.tar.gz
etcdfc=netcdf-c-4.9.0
tar -xvf ${netcdfc}.tar.gz
cd ${netcdfc}
CC=mpicc LDFLAGS=-L$INSDIR/lib LIBS=-lhdf5 CPPFLAGS=-I$INSDIR/include ./configure --prefix=$INSDIR
make clean
make 
make install
pause 'Jika instalasi berhasil tekan [Enter]'
####################

## install netcdf-f
cd ${SRCDIR}
wget https://downloads.unidata.ucar.edu/netcdf-fortran/4.6.0/netcdf-fortran-4.6.0.tar.gz
netcdff=netcdf-fortran-4.6.0
tar -xvf ${netcdff}.tar.gz
cd ${netcdff}
CC=mpicc FC=mpif90 LDFLAGS=-L$INSDIR/lib CPPFLAGS=-I$INSDIR/include LIBS=-lnetcdf ./configure --prefix=$INSDIR --enable-parallel-tests
make clean
make 
make install
pause 'Jika instalasi berhasil tekan [Enter]'

