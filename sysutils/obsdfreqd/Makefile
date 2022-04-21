COMMENT =		userland daemon to manage CPU frequency
V =			1.0.1
DISTNAME =		obsdfreqd-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://tildegit.org/solene/obsdfreqd/

MAINTAINER =		Solene Rapenne <solene@perso.pw>

# ISC
PERMIT_PACKAGE =	Yes

# uses unveil()
WANTLIB +=		c m

MASTER_SITES =		https://tildegit.org/solene/obsdfreqd/archive/

DISTFILES =		obsdfreqd-{}${V}${EXTRACT_SUFX}
WRKSRC =		${WRKDIR}/obsdfreqd
NO_TEST =		Yes

.include <bsd.port.mk>
