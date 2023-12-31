#!/bin/sh
rm output/*.ppm output/*.jpg output/*.dmp output/*.sta
rm *.exe

source /opt/intel/oneapi/setvars.sh intel64 --force

# icc -g -qopenmp -O2 -parallel-source-info=2 -qopt-report=N -qopt-report-phase=loop,vec particles2023.c -o particles2023_c.exe
icc -g -qopenmp -O2 -parallel-source-info=2 particles2023.c -o particles2023_c.exe

export OMP_NUM_THREADS=4
vtune -collect hpc-performance ./particles2023_c.exe
