# $OpenBSD: Makefile,v 1.1.1.1 2007/10/23 15:33:40 espie Exp $ 
bindir=	${TRUEPREFIX}/bin
OBJS=	xmlwf.o	xmlfile.o codepage.o unixfilemap.o

xmlwf: ${OBJS}
	${CC} ${CFLAGS} -o $@ ${OBJS} -lexpat

all:	xmlwf

install:
	${BSD_INSTALL_PROGRAM} xmlwf ${DESTDIR}${bindir}

.PHONY:	all install
