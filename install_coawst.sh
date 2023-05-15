#!/bin/bash

git clone https://code.usgs.gov/coawstmodel/COAWST.git

cd COAWST

mkdir Tools

cd Tools

git clone https://github.com/trondkr/model2roms

git clone https://github.com/trondkr/ERA5-ROMS

git clone https://github.com/trondkr/romstools.git

cd model2roms

conda create -n model2roms
conda config --add channels conda-forge

conda activate model2roms
conda install esmf xarray netcdf4 progressbar2

python compile.py

