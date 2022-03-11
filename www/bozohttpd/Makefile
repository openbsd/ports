COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20201014
CATEGORIES =	www

HOMEPAGE =	http://www.eterna.com.au/bozohttpd/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto m ssl

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

FAKE_FLAGS =		BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

do-test:
	cd ${WRKSRC}/testsuite && ${MAKE_PROGRAM} ${MAKE_FLAGS} check

.include <bsd.port.mk>
