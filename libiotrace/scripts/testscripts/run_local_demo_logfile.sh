#!/usr/bin/env bash

rm -f dd_demo_*.log

IOTRACE_LOG_NAME=dd_demo \
LD_PRELOAD=../../build/logfile/src/libiotrace.so \
dd if=/dev/random of=/dev/null bs=4M count=1000
