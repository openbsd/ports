# $OpenBSD: Makefile,v 1.1.1.1 2003/05/04 17:47:42 margarida Exp $

COMMENT=		"multi-window tail(1) utility"

DISTNAME=		multitail-2.4
CATEGORIES=		sysutils

HOMEPAGE=		http://www.vanheusden.com/multitail/	

MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

NO_REGRESS=		Yes

SEPARATE_BUILD=		concurrent

LDFLAGS=		-lcurses -lutil

do-build:
	cd ${WRKBUILD}; \
		${CC} ${CFLAGS} -c ${WRKSRC}/mt.c; \
		${CC} ${CFLAGS} -c ${WRKSRC}/error.c; \
		${CC} ${CFLAGS} -c ${WRKSRC}/my_pty.c; \
		${CC} ${CFLAGS} mt.o error.o my_pty.o ${LDFLAGS} -o multitail

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/multitail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/multitail.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
