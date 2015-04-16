# $OpenBSD: Makefile,v 1.2 2015/04/16 17:30:21 landry Exp $

COMMENT =	fd.o-compliant menu editor

MODPY_EGG_VERSION =	2.0.6
DISTNAME =	menulibre-${MODPY_EGG_VERSION}
CATEGORIES =	sysutils x11

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	http://smdavis.us/projects/menulibre/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://launchpad.net/menulibre/2.0/${MODPY_EGG_VERSION}/+download/

MODULES=	lang/python devel/gettext
MODPY_VERSION =	3.4

PORTHOME =	${WRKDIR}
NO_BUILD =	Yes
BUILD_DEPENDS =	devel/py-distutils-extra${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR} 
RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		x11/gnome/menus \
		devel/xdg-utils \
		x11/gtk+3,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

.include <bsd.port.mk>
