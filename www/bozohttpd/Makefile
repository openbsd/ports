COMMENT =	bozotic HTTP server

DISTNAME =	bozohttpd-20240126
CATEGORIES =	www

HOMEPAGE =	http://www.eterna23.net/bozohttpd/

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	c crypto m ssl

SITES =		${HOMEPAGE}
EXTRACT_SUFX =	.tar.bz2

MAKE_FLAGS =	COPTS="-DDO_HTPASSWD -DNO_LUA_SUPPORT -DNO_BLOCKLIST_SUPPORT"
FAKE_FLAGS =	BINDIR=${PREFIX}/libexec \
		MANDIR=${PREFIX}/man/man

TEST_DEPENDS =	net/wget
TEST_TARGET =	check

.include <bsd.port.mk>
