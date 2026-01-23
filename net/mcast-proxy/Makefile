COMMENT =		multicast proxy daemon

DIST_TUPLE =		github bket mcast-proxy 824c8765f2125700630c3781890481dc05b8d963 /
DISTNAME =		mcast-proxy-1.0.20260103

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
