# PROMINENT_model

# Pusat Riset Oseanografi - BRIN

Install library yang di butuhkan untuk model ROMS

OS =  Windows Subsystem Linux - UBUNTU 20
COMPILER = Gfortran

Pastikan berada di direktori HOME

Download seluruh source command ke /home

git clone https://github.com/dwygngrh/PROMINENT_model.git

## Ikuti step berikut : 

chmod +x *.sh

./install_essentials.sh

./install_openmpi.sh

# logout terus login lagi

./install_roms_parallel.sh

./install_m4.sh

# logout terus login lagi

./install_octave.sh

# agar di logout trus login lagi

### Install anaconda

wget https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh

chmod +x Anaconda3-2023.03-Linux-x86_64.sh

./Anaconda3-2023.03-Linux-x86_64.sh

## install ferret

conda create -n ferret-py39 pyferret python=3.9

## install COAWST

cd COAWST

cd Tools

conda create -n model2roms

conda config --add channels conda-forge

conda activate model2roms

conda install esmf xarray netcdf4 progressbar2 

python compile.py




