#!/bin/sh
LD_PRELOAD=libpthread.so exec ${PREFIX}/libexec/frozen-bubble/`basename $0` $*
