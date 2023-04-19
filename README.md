# PROMINENT_model

Install library yang di butuhkan untuk model ROMS

OS =  Windows Subsystem Linux - UBUNTU 20
COMPILER = Gfortran

Pastikan berada di direktori HOME

Download seluruh source command ke /home

Ikuti step berikut : 

chmod +x install_essentials.sh

chmod +x install_roms_parallel.sh

chmod +x install_coawst.sh

./install_essentials.sh

./install_roms_parallel.sh

./install_coawst.sh

cd COAWST

cd Tools

conda create -n model2roms

conda config --add channels conda-forge

conda activate model2roms

conda install esmf xarray netcdf4 progressbar2 






