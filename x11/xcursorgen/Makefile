COMMENT =	X11 Cursors themes generator
DISTNAME =	xcursorgen-1.0.9
CATEGORIES =	x11
EPOCH =	0

HOMEPAGE =	https://gitlab.freedesktop.org/xorg/app/xcursorgen

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS =	graphics/png

# X11
PERMIT_PACKAGE =		Yes

WANTLIB += X11 Xcursor c png

SITES =		${SITE_XORG:=app/}

MODULES =	devel/meson

NO_TEST =		Yes

.include <bsd.port.mk>
