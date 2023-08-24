#!/bin/sh
rm output/*.ppm output/*.jpg output/*.dmp output/*.sta

./opt/intel/oneapi/setvars.sh intel64 --force

export OMP_NUM_THREADS=6 
./particles2023_c.exe
