COMMENT =		OpenBGPD performance test suite

VERSION =		0.0pl20251230
DISTNAME =		bgp-perf-${VERSION}

GH_ACCOUNT =		openbgpd-portable
GH_PROJECT =		bgp-perf
GH_COMMIT =		af8c2d92e04c89c12aa032a360f09725b0e407eb

CATEGORIES =		net

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c util

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/man"

NO_TEST =		Yes

.include <bsd.port.mk>
