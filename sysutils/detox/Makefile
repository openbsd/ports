COMMENT =		utility designed to clean up filenames

V =			1.4.5
DISTNAME =		detox-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/dharple/detox

#BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c

SITES =			${HOMEPAGE}/releases/download/v${V}/

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/detox

.include <bsd.port.mk>
