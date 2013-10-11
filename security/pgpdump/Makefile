# $OpenBSD: Makefile,v 1.21 2013/10/11 23:50:53 naddy Exp $

COMMENT=	PGP packet visualizer

DISTNAME=	pgpdump-0.26
CATEGORIES=	security

HOMEPAGE=	http://www.mew.org/~kazu/proj/pgpdump/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c z

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu dest

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgpdump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pgpdump.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
