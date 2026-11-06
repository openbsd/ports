COMMENT =	single line menu

DISTNAME =	slmenu-0

CATEGORIES =	sysutils

# MIT/X Consortium License
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	c

GH_ACCOUNT =	joshaw
GH_PROJECT =	slmenu
GH_COMMIT =	b3740ca053694ff0afbcd0ce04ad67061ae1f548

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"
FAKE_FLAGS =	MANPREFIX="${PREFIX}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
