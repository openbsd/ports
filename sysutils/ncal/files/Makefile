# $OpenBSD: Makefile,v 1.1.1.1 2018/09/09 13:31:23 naddy Exp $

.PATH:	${.CURDIR}/../libcalendar

PROG=	ncal
SRCS=	ncal.c calendar.c easter.c
CFLAGS+= -I${.CURDIR}/../libcalendar
CFLAGS+= '-D__FBSDID(x)='
LDADD=	-lcurses
DPADD=	${LIBCURSES}

BINDIR=	${TRUEPREFIX}/bin
MANDIR=	${TRUEPREFIX}/man/man

.include <bsd.prog.mk>
