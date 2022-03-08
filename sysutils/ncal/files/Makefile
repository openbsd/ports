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
