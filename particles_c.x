#!/bin/sh
rm output/*.ppm output/*.jpg output/*.dmp output/*.sta
module load gnu
rm *.exe
gcc -pg -o particles2023_c.exe -O3 -fbounds-check particles2023_c.c -lm -fopenmp
OMP_NUM_THREADS=2 ./particles2023_c.exe
