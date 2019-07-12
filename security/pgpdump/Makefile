# $OpenBSD: Makefile,v 1.26 2019/07/12 20:49:09 sthen Exp $

COMMENT=		PGP packet visualizer

DISTNAME=		pgpdump-0.33
CATEGORIES=		security

HOMEPAGE=		https://www.mew.org/~kazu/proj/pgpdump/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgpdump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pgpdump.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
