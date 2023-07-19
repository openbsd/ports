COMMENT =	highlight mouse pointer using a dot
GH_ACCOUNT =	swillner
GH_PROJECT =	highlight-pointer
GH_TAGNAME =	v1.1.3
CATEGORIES =	x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xfixes Xi c
USE_GMAKE =	Yes
NO_TEST =	Yes
CFLAGS +=	-I/usr/X11R6/include -L/usr/X11R6/lib
MAKE_FILE =	makefile
ALL_TARGET =	highlight-pointer

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/highlight-pointer ${PREFIX}/bin/

.include <bsd.port.mk>
