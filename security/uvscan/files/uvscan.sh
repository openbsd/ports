#!/bin/sh

UVSCANDIR=@@PREFIX@@/libexec/uvscan

LD_LIBRARY_PATH=$UVSCANDIR
export LD_LIBRARY_PATH

$UVSCANDIR/uvscan "$@"
