# $OpenBSD: Makefile,v 1.2 2001/09/11 00:20:51 brad Exp $

PROG=	kermit
CFLAGS+= -I${.CURDIR} -DBSD44 -DCK_CURSES -DDYNAMIC -DTCPSOCKET \
	 -DNOCOTFMC -DNDSYSERRLIST
SRCS=	ckcmai.c ckucmd.c ckuusr.c ckuus2.c ckuus3.c ckuus4.c ckuus5.c \
	ckuus6.c ckuus7.c ckuusx.c ckuusy.c ckcpro.c ckcfns.c ckcfn2.c \
	ckcfn3.c ckuxla.c ckucon.c ckutio.c ckufio.c ckudia.c ckuscr.c \
	ckcnet.c ckusig.c

BINDIR=	${PREFIX}/bin
MANDIR=	${PREFIX}/man/cat

CLEANFILES+= ckcpro.c ckcwart.o wart kermit.1

DPADD=	${LIBCURSES} ${LIBTERMLIB}
LDADD=	-lcurses -ltermlib

.SUFFIXES: .w

.w.c:
	./wart ${.IMPSRC} ${.TARGET}

wart: ckwart.c
	$(CC) -o wart ${.CURDIR}/ckwart.c

ckcpro.c: ckcpro.w
ckcpro.c: wart

kermit.1: ckuker.cpp
	$(CPP) ckuker.cpp | grep -v ^$$ | grep -v ^\# > kermit.1 || \
		rm -f kermit.1

.include <bsd.prog.mk>
