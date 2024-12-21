COMMENT =		display keypresses on screen

MODPY_DISTV =	1.5
DISTNAME =		screenkey-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		x11

HOMEPAGE =		https://www.thregr.org/~wavexx/software/screenkey/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# GPLv3+
PERMIT_PACKAGE =	Yes

# dlopen()'d
WANTLIB =		X11 Xtst

SITES =		https://www.thregr.org/~wavexx/software/screenkey/releases/

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS +=	devel/gettext,-tools \
			devel/py-babel \
			devel/py-distutils-extra
RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/py-gobject3 \
			graphics/py-cairo \
			x11/py-xlib

NO_TEST =		Yes

.include <bsd.port.mk>
