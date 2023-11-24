COMMENT =	pf table DNS update daemon

VERSION =	1.00
DISTNAME =	pfresolved-${VERSION}
SUPDISTFILES =	${DISTFILES}.asc

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto event execinfo pthread ssl unbound util

SITES =	https://github.com/genua/pfresolved/releases/download/v${VERSION}/

LIB_DEPENDS =		net/libunbound
TEST_DEPENDS =		net/ldns,-utils

# regress tests need root via SUDO environment to write pf table
TEST_ENV =		SUDO=doas

.include <bsd.port.mk>
