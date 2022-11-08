COMMENT =		multicast proxy daemon

GH_ACCOUNT =		Esdenera
GH_PROJECT =		mcast-proxy
GH_TAGNAME =		v1.0
REVISION =		7

DISTFILES =		mcast-proxy-1.0-0{mcast-proxy-1.0}.tar.gz

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
