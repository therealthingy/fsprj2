#!/usr/bin/env bash

IOTRACE_LOG_NAME=dd_demo \
IOTRACE_DATABASE_IP=127.0.0.1 IOTRACE_DATABASE_PORT=8086 \
IOTRACE_INFLUX_ORGANIZATION=hse IOTRACE_INFLUX_BUCKET=hsebucket \
IOTRACE_INFLUX_TOKEN=OXBWllU1poZotgyBlLlo2XQ_u4AYGYKQmdxvJJeotKRyvdn5mwjEhCXyOjyldpMmNt_9YY4k3CK-f5Eh1bN0Ng== \
LD_PRELOAD=../../build/influx/src/libiotrace.so \
dd if=/dev/random of=/dev/null bs=4M count=1000
