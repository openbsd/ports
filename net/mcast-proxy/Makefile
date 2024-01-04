COMMENT =		multicast proxy daemon

DIST_TUPLE =		github bket mcast-proxy 07978f1151e827ed94d007057e8892272fb4204d /
DISTNAME =		mcast-proxy-1.0.20231121

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
