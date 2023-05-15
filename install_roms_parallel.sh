#!/bin/bash

# Code buat install library parallel di server,PC atau laptop dengan GFORTRAN

set +x
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
## install zlib
cd ${SRCDIR}
zlib=zlib-1.2.13
wget --no-check-certificate https://zlib.net/zlib-1.2.13.tar.gz
tar -xvf ${zlib}.tar.gz
cd ${zlib}
CC=${CC} ./configure --prefix=${INSDIR}
make && make install
####################
##
### install hdf5
cd ${SRCDIR}
hdf5=hdf5-1.12.1
wget --no-check-certificate https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/hdf5-1.12.1/src/hdf5-1.12.1.tar.gz 
tar -xvf ${hdf5}.tar.gz
cd ${hdf5}
CC=mpicc FC=mpif90 CFLAGS=-fPIC ./configure --enable-shared --enable-parallel --enable-fortran --enable-fortran2003 --with-zlib=${INSDIR} --prefix=${INSDIR}
make clean
make
make install
####################
#
## install netcdf-c
cd ${SRCDIR}
wget --no-check-certificate https://downloads.unidata.ucar.edu/netcdf-c/4.9.0/netcdf-c-4.9.0.tar.gz
netcdfc=netcdf-c-4.9.0
tar -xvf ${netcdfc}.tar.gz
cd ${netcdfc}
CC=mpicc LDFLAGS=-L$INSDIR/lib LIBS=-lhdf5 CPPFLAGS=-I$INSDIR/include ./configure --prefix=$INSDIR
make clean
make 
make install
####################

## install netcdf-f
cd ${SRCDIR}
wget --no-check-certificate https://downloads.unidata.ucar.edu/netcdf-fortran/4.6.0/netcdf-fortran-4.6.0.tar.gz
netcdff=netcdf-fortran-4.6.0
tar -xvf ${netcdff}.tar.gz
cd ${netcdff}
CC=mpicc FC=mpif90 LDFLAGS=-L$INSDIR/lib CPPFLAGS=-I$INSDIR/include LIBS=-lnetcdf ./configure --prefix=$INSDIR --enable-parallel-tests
make clean
make 
make install
