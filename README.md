# PROMINENT_model

# Pusat Riset Oseanografi - BRIN

Install library yang di butuhkan untuk model ROMS

OS =  Windows Subsystem Linux - UBUNTU 20
COMPILER = Gfortran

Pastikan berada di direktori HOME

# Ikuti step berikut : 

git clone https://github.com/dwygngrh/PROMINENT_model.git

cd PROMINENT_model

chmod +x *.sh

./install_essentials.sh

./install_openmpi.sh

### logout UBUNTU terus login lagi

cd PROMINENT_model

./install_roms_parallel.sh

./install_m4.sh

### logout UBUNTU terus login lagi

cd PROMINENT_model

./install_octave.sh

### logout UBUNTU trus login lagi

# Install ROMS_CROCO

mkdir CROCO

cd CROCO

wget --no-check-certificate https://data-croco.ifremer.fr/CODE_ARCHIVE/croco-v1.3.tar.gz

tar -xzf croco-v1.3.tar.gz

wget --no-check-certificate https://data-croco.ifremer.fr/CODE_ARCHIVE/croco_tools-v1.3.tar.gz

tar -xzf croco_tools-v1.3.tar.gz

# Install anaconda untuk ROMS_COAWST

wget --no-check-certificate https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh

chmod +x Anaconda3-2023.03-Linux-x86_64.sh

./Anaconda3-2023.03-Linux-x86_64.sh

# install ferret

conda create -n ferret -c conda-forge pyferret  python=3.9

# install ROMS_COAWST

cd

git clone https://github.com/jcwarner-usgs/COAWST.git

cd COAWST

mkdir Tools

cd Tools

conda create -n model2roms

conda config --add channels conda-forge

conda activate model2roms

conda install esmf esmpy xarray netcdf4 progressbar2 

python compile.py

#  INSTALL OCTCDF

cd ../PROMINEN_model

octave

#### Ketik didalam octave :

pkg install octcdf.tar.gz










