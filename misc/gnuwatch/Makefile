# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:50 sthen Exp $

COMMENT=		GNU watch command

DISTNAME=		procps-3.2.8
PKGNAME=		${DISTNAME:S/procps/gnuwatch/}
CATEGORIES=		misc
REVISION=		0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://procps.sourceforge.net/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=		curses c

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes

do-build:
	${CC} ${CFLAGS} -c ${WRKSRC}/watch.c -o ${WRKSRC}/watch.o
	${CC} ${CFLAGS} ${LDFLAGS} ${WRKSRC}/watch.o -o ${WRKSRC}/gnuwatch \
	    -lncurses

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gnuwatch ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/watch.1 ${PREFIX}/man/man1/gnuwatch.1

.include <bsd.port.mk>
