#!/bin/bash
sudo -- sh -c 'echo 0 > /proc/sys/kernel/perf_event_paranoid'
sudo -- sh -c 'echo 0 > /proc/sys/kernel/kptr_restrict'
sudo -- sh -c 'echo 0 > /proc/sys/dev/i915/perf_stream_paranoid'