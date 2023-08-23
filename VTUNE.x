#!/bin/sh
rm output/*.ppm output/*.jpg output/*.dmp output/*.sta
rm *.exe

source /opt/intel/oneapi/setvars.sh intel64 --force

icx -g -qopenmp -O2 -parallel-source-info=2 particles2023_c.c -o particles2023_c.exe

export OMP_NUM_THREADS=6 
vtune -collect hpc-performance ./particles2023_c.exe
