#!/bin/sh
WRKBUILD=@WRKBUILD@
FILESDIR=@FILESDIR@
mkdir -p $WRKBUILD/gcc/include/machine
cp $FILESDIR/include/machine/ansi.h $WRKBUILD/gcc/include/machine
cp $FILESDIR/include/*.h $WRKBUILD/gcc/include
