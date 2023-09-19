COMMENT =		CLAT configuration daemon for OpenBSD
V =			1.4
DISTNAME =		gelatod-${V}
CATEGORIES =		net

# BSD 2-clause
PERMIT_PACKAGE =	Yes

SITES =			https://codeberg.org/fobser/gelatod/releases/download/v${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# uses pledge()
WANTLIB =		c event util

NO_TEST =		Yes

.include <bsd.port.mk>
