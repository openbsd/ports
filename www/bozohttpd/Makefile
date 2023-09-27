COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20220517
CATEGORIES =	www

HOMEPAGE =	http://www.eterna.com.au/bozohttpd/

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	c crypto m ssl

SITES =		${HOMEPAGE}
EXTRACT_SUFX =	.tar.bz2

FAKE_FLAGS =	BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

TEST_DEPENDS =	net/wget
TEST_TARGET =	check

.include <bsd.port.mk>
