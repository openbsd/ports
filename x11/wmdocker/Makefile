COMMENT =		a system tray for KDE, GNOME2 and WindowMaker

VERSION =		1.5
DISTNAME =		docker-$(VERSION)
PKGNAME =		wmdocker-$(VERSION)
CATEGORIES =		x11

HOMEPAGE =		https://icculus.org/openbox/2/docker/

#GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://icculus.org/openbox/2/docker/

WANTLIB =		X11 c glib-2.0 intl

MAKE_FLAGS =		CFLAGS="-Wall -I${X11BASE}/include"

BUILD_DEPENDS = 	devel/glib2

LIB_DEPENDS =		devel/glib2

USE_GMAKE =		Yes

.include <bsd.port.mk>
