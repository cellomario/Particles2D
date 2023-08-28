#!/bin/sh
rm output/*.ppm output/*.jpg output/*.dmp output/*.sta

./opt/intel/oneapi/setvars.sh intel64 --force

export OMP_NUM_THREADS=6 

sudo -- sh -c 'echo 0 > /proc/sys/kernel/perf_event_paranoid'
sudo -- sh -c 'echo 0 > /proc/sys/kernel/kptr_restrict'
sudo -- sh -c 'echo 0 > /proc/sys/dev/i915/perf_stream_paranoid'