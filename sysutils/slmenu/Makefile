COMMENT =	single line menu

DISTNAME =	slmenu-0

CATEGORIES =	sysutils

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	c

DIST_TUPLE +=	github joshaw slmenu b3740ca053694ff0afbcd0ce04ad67061ae1f548 .

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"
FAKE_FLAGS =	MANPREFIX="${PREFIX}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
