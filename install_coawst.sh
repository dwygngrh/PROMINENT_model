#!/bin/bash

cd 

git clone https://code.usgs.gov/coawstmodel/COAWST.git

cd COAWST

mkdir Tools

cd Tools

mv ../../PROMINENT_model/model2roms.rar .

unrar x model2roms

git clone https://github.com/trondkr/ERA5-ROMS

git clone https://github.com/trondkr/romstools.git

cd model2roms

conda create -n model2roms
conda config --add channels conda-forge

conda activate model2roms
conda install esmf xarray netcdf4 progressbar2

python compile.py

