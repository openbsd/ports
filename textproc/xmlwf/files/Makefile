bindir=	${TRUEPREFIX}/bin
OBJS=	xcs.o xmlwf.o xmlfile.o codepage.o unixfilemap.o

xcs.o: ../lib/xcs.c

xmlwf: ${OBJS}
	${CC} ${CFLAGS} -o $@ ${OBJS} -lexpat

all:	xmlwf

install:
	${BSD_INSTALL_PROGRAM} xmlwf ${DESTDIR}${bindir}

.PHONY:	all install
