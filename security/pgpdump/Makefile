COMMENT=		PGP packet visualizer

DISTNAME=		pgpdump-0.35
CATEGORIES=		security

# https://github.com/kazu-yamamoto/pgpdump
HOMEPAGE=		https://www.mew.org/~kazu/proj/pgpdump/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c z

SITES=			${HOMEPAGE}

CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgpdump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pgpdump.1 ${PREFIX}/man/man1

do-test:
	${WRKSRC}/data/test.sh -v

.include <bsd.port.mk>
