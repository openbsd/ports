COMMENT =		userland daemon to manage CPU frequency
V =			1.2.1
DISTNAME =		obsdfreqd-${V}

CATEGORIES =		sysutils

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

HOMEPAGE =		https://git.sr.ht/~solene/obsdfreqd

# ISC
PERMIT_PACKAGE =	Yes

# uses unveil()
WANTLIB +=		c m

SITES =			https://git.sr.ht/~solene/obsdfreqd/archive/

DISTFILES =		obsdfreqd-{}${V}${EXTRACT_SUFX}
NO_TEST =		Yes

.include <bsd.port.mk>
