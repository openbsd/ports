COMMENT =	XCB utility library naming error, event & request codes

DISTNAME =	xcb-util-errors-1.0.1
REVISION =	1

CATEGORIES =	x11

HOMEPAGE =	https://xcb.freedesktop.org

MAINTAINER =	matthieu@openbsd.org

SHARED_LIBS=    xcb-errors 0.0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		Xau Xdmcp xcb

SITES =			https://xcb.freedesktop.org/dist/

MODULES=                lang/python
MODPY_BUILDDEP =        Yes

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
