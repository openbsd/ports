COMMENT =		userland daemon to manage CPU frequency
V =			1.1.1
DISTNAME =		obsdfreqd-${V}

CATEGORIES =		sysutils

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

HOMEPAGE =		https://tildegit.org/solene/obsdfreqd/

# ISC
PERMIT_PACKAGE =	Yes

# uses unveil()
WANTLIB +=		c m

MASTER_SITES =		https://tildegit.org/solene/obsdfreqd/archive/

DISTFILES =		obsdfreqd-{}${V}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/obsdfreqd
NO_TEST =		Yes

.include <bsd.port.mk>
