# $OpenBSD: Makefile,v 1.1.1.1 2006/01/28 11:04:08 alek Exp $

COMMENT=		"GNU watch command"

DISTNAME=		procps-3.2.6
PKGNAME=		${DISTNAME:S/procps/gnuwatch/}
CATEGORIES=		misc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

HOMEPAGE=		http://procps.sourceforge.net/

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ncurses c

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes

do-build:
	${CC} ${CFLAGS} -c ${WRKSRC}/watch.c -o ${WRKSRC}/watch.o
	${CC} ${CFLAGS} ${LDFLAGS} -lncurses ${WRKSRC}/watch.o -o ${WRKSRC}/gnuwatch

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gnuwatch ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/watch.1 ${PREFIX}/man/man1/gnuwatch.1

.include <bsd.port.mk>
