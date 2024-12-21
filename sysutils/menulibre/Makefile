COMMENT =	fd.o-compliant menu editor

MODPY_DISTV =	2.4.0
DISTNAME =	menulibre-${MODPY_DISTV}
GH_ACCOUNT =	bluesabre
GH_PROJECT =	menulibre
GH_TAGNAME =	menulibre-${MODPY_DISTV}
CATEGORIES =	sysutils x11
REVISION =	1

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	https://bluesabre.org/projects/menulibre/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
PORTHOME =	${WRKDIR}
MODPY_PYBUILD =	setuptools
BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-distutils-extra \
		devel/py-gobject3 \
		x11/gtk+3
RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/py-gobject3 \
		sysutils/py-psutil \
		x11/gnome/menus \
		devel/xdg-utils \
		x11/gtk+4,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

post-extract:
	rm ${WRKSRC}/uninstall.py

.include <bsd.port.mk>
