In the 07-Particles2D folders there are sequential source codes to be optimized and scripts for 
compiling and running on M100 (with few changes on any other Linux platform).
Tests have been realized with GNU compilers, but other C and Fortran compilers should do as well

In order to check parallelization correctness the images produced at last stage with sequential 
and parallel runs should look quite similar; even better, position and velocity of particles could 
be saved and compared for both versions.

The generated image files could be assembled to create a video like stage.avi, 10 frames/sec

During developing the program optimized version, the "iterations for particle dynamics" parameter
in Particles.inp could be changed in 10.

Would you please read the comments in the source code for further instructions