#!/bin/sh
LD_PRELOAD=libpthread.so exec ${PREFIX}/libexec/svk $*
