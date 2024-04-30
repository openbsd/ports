COMMENT =		multicast proxy daemon

DIST_TUPLE =		github bket mcast-proxy 063e083d4867011fcfadc2f92f53302c4202049b /
DISTNAME =		mcast-proxy-1.0.20240320

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
