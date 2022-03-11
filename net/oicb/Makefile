COMMENT =	minimalistic command-line ICB client
VERSION =	1.3.0
DISTNAME =	oicb-${VERSION}
CATEGORIES =	net
MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE =	Yes

# uses pledge() and unveil()
WANTLIB =		c curses readline

MASTER_SITES =		https://github.com/grayed/oicb/releases/download/v${VERSION}/

NO_TEST =		Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
