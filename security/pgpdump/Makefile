# $OpenBSD: Makefile,v 1.20 2013/03/11 11:41:27 espie Exp $

COMMENT=	PGP packet visualizer

DISTNAME=	pgpdump-0.26
CATEGORIES=	security

HOMEPAGE=	http://www.mew.org/~kazu/proj/pgpdump/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c z

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu dest
USE_GROFF =	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgpdump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pgpdump.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
