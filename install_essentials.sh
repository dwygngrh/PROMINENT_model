#!/bin/bash

# Code buat install library parallel di server,PC atau laptop dengan GFORTRAN

set +x
# Be carefull, will build all directory in root access
sudo apt-get update
#sudo apt install build-essential
#sudo apt install gfortran
#sudo apt-get install ncview
sudo apt-get install -y php-posix
#sudo apt-get -y install nco
#sudo apt install git
#sudo apt install x11-apps
#sudo apt-get install m4

sudo apt-get install build-essential gcc g++ gfortran make m4 x11-apps nco ncview libopenblas-dev liblapack-dev libpcre3-dev libarpack2-dev libcurl4-gnutls-dev epstool libfftw3-dev fig2dev libfltk1.3-dev libfontconfig1-dev libfreetype6-dev libgl2ps-dev libglpk-dev libreadline-dev gnuplot-x11 libgraphicsmagick++1-dev libhdf5-dev openjdk-11-jdk libsndfile1-dev llvm-dev texinfo libgl1-mesa-dev pstoedit portaudio19-dev libqhull-dev libqrupdate-dev libsuitesparse-dev texlive-latex-extra libxft-dev zlib1g-dev autoconf automake bison flex gperf gzip icoutils librsvg2-bin libtool perl rsync tar qtbase5-dev qttools5-dev qttools5-dev-tools libqscintilla2-qt5-dev libsundials-dev rapidjson-dev
