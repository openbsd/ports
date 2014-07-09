# $OpenBSD: Makefile,v 1.8 2014/07/09 16:49:35 jasper Exp $

COMMENT =	fast and simple GTK+ image viewer

MODPY_EGG_VERSION = 0.9.5.2
DISTNAME =	mirage-${MODPY_EGG_VERSION}
REVISION =	4

CATEGORIES =	graphics

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	X11 ${MODPY_WANTLIB}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mirageiv.berlios/}

MODULES =	lang/python

# Mirage's toolbar needs py-gnome to follow GNOME settings.
# py-gnome is already an indirect dependency for gnome-session:
# gnome-session -> gnome-settings-daemon -> gnome-desktop -> py-gnome.
# People not running GNOME do not need/want this dependency.
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/py-gtk2 \
		devel/xdg-utils
BUILD_DEPENDS = devel/gettext

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
