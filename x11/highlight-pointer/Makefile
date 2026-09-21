COMMENT =	highlight mouse pointer using a dot
GH_ACCOUNT =	swillner
GH_PROJECT =	highlight-pointer
GH_TAGNAME =	v1.3
CATEGORIES =	x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xfixes Xi c

USE_GMAKE =	Yes
NO_TEST =	Yes

MAKE_FLAGS +=	LDFLAGS="${LDFLAGS}"

# -flto and -std=c99 taken from ${WRKSRC}/makefile
CFLAGS +=	-flto -std=c99 -I${X11BASE}/include
LDFLAGS +=	-L${X11BASE}/lib

MAKE_FILE =	makefile
ALL_TARGET =	highlight-pointer

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/highlight-pointer ${PREFIX}/bin/

.include <bsd.port.mk>
