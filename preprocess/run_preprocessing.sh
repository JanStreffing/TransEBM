#!/bin/sh

ifort preprocessing.f90 extract.f90 prepare_albedo.f90 prepare_geography.f90 -o preprocessing ../config/parse_config.o -I/usr/include -L/home/albus/anaconda3/lib -lnetcdff -lnetcdf

./preprocessing
mv -f *.nc ../input
cp orography_run.nc ../input/orography_run.nc
rm -rf *~
