bindir=	${TRUEPREFIX}/bin
OBJS=	xmlwf.o	xmlfile.o codepage.o unixfilemap.o

xmlwf: ${OBJS}
	${CC} ${CFLAGS} -o $@ ${OBJS} -lexpat

all:	xmlwf

install:
	${BSD_INSTALL_PROGRAM} xmlwf ${DESTDIR}${bindir}

.PHONY:	all install
