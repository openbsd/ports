#
# NetBSD
#

SHLIB_MAJOR=	0
SHLIB_MINOR=	88

CC=cc
CCFLAG=-O -fPIC
LDFLAG=
RANLIB=ranlib
XINCLUDE=-I${X11BASE}/include
SYSLIB=-L${X11BASE}/lib -lX11 -lm

# where the library should be installed

LIB_DIR=${PREFIX}/lib
HEADER_DIR=${PREFIX}/include/X11
BIN_DIR=${PREFIX}/bin

MAN5_DIR=${PREFIX}/man/man5
MAN1_DIR=${PREFIX}/man/man1

DEMO_DIR=${PREFIX}/share/examples/xforms

# name and header of the library
FORMLIB=libforms.a
STATIC_NAME=libxforms.a
FORMHEADER=forms.h

# shared library
SHARED_LIB=libforms.so.${SHLIB_MAJOR}.${SHLIB_MINOR}
SHARED_NAME=libxforms.so.${SHLIB_MAJOR}.${SHLIB_MINOR}

LN=ln -fs
