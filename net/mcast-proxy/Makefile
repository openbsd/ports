COMMENT =		multicast proxy daemon

GH_ACCOUNT =		bket
GH_PROJECT =		mcast-proxy
GH_COMMIT =		6222960d03eb7911918388d39c687b75aca9ee59
DISTNAME =		${GH_PROJECT}-1.0.20230329

CATEGORIES =		net

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		c event

FAKE_FLAGS =		BINDIR="${PREFIX}/sbin" \
			MANDIR="${PREFIX}/man/man"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/usr.sbin/mcast-proxy

.include <bsd.port.mk>
