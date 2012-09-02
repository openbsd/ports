# $OpenBSD: Makefile,v 1.1.1.1 2012/09/02 14:14:02 espie Exp $

CFLAGS += -DCPP_PROGRAM=\"${CPP_PROGRAM}\"
CFLAGS += -I${X11BASE}/include

PROGS = imake revpath

SCRIPTS = xmkmf ccmakedep mergelib mkhtmlindex mkdirhier cleanlinks makeg
MANS = ccmakedep.1 imake.1 mergelib.1 mkhtmlindex.1 xmkmf.1 cleanlinks.1 \
	makeg.1 mkdirhier.1 revpath.1

all: ${PROGS} ${SCRIPTS} ${MANS}

install:
.for p in ${PROGS}
	${INSTALL_PROGRAM} $p ${PREFIX}/bin
.endfor
.for s in ${SCRIPTS}
	${INSTALL_SCRIPT} $s ${PREFIX}/bin
.endfor
.for m in ${MANS}
	${INSTALL_MAN} $m ${PREFIX}/man/man1
.endfor

SUBSTS += -e 's|__xorgversion__|"imake 1.0.5" "X Version 11"|'
SUBSTS += -e 's|__vendorversion__|"imake 1.0.5" "X Version 11"|'
SUBSTS += -e 's|__cpp__|${CPP_PROGRAM}|'

CPPSUBSTS += -DCONFIGDIRSPEC='"-I$(XCONFDIR)"' 
CPPSUBSTS += -DCCPP='gcc -E'
CPPSUBSTS += -DARCMD='ar clq'
CPPSUBSTS += -DRANLIB=ranlib
imake: imake.o
	${CC} -o $@ ${CFLAGS} imake.o

revpath: revpath.o
	${CC} -o $@ ${CFLAGS} revpath.o

ccmakedep.cpp: mdepend.cpp
	ln -f mdepend.cpp $@

mkhtmlindex: mkhtmlindex.pl
	ln -f mkhtmlindex.pl $@

.SUFFIXES: .cpp .man .1

.cpp:
	${CPP_PROGRAM} ${CPPSUBSTS} < $*.cpp | \
	    sed -e /^\#/d | sed -e s/XCOMM/\#/ >$@

.man.1:
	sed ${SUBSTS} <$*.man >$*.1

.PHONY: all
