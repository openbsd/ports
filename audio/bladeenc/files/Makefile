# $OpenBSD: Makefile,v 1.1.1.1 1999/08/02 05:15:46 brad Exp $

PROG=	bladeenc
MAN=	# empty
SRCS=	codec.c bladesys.c bladtab.c main.c tables.c samplein.c \
	strupr.c formatbitstream2.c huffman.c l3bitstream.c l3psy.c \
	loop.c mdct.c reservoir.c subs.c encode.c common.c
DPADD=	${LIBM}
LDADD=	-lm

DEFS=-DSYSTEM=OPENBSD -funroll-all-loops
CFLAGS+= ${DEFS}

codec.o: codec.c
	${CC} -O ${DEFS} -c ${.IMPSRC}

.include <bsd.prog.mk>
