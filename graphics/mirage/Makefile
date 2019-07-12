# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:03 sthen Exp $

COMMENT =	fast and simple GTK+ image viewer

MODPY_EGG_VERSION = 0.9.5.2
DISTNAME =	mirage-${MODPY_EGG_VERSION}
REVISION =	6

CATEGORIES =	graphics

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += X11 pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mirageiv.berlios/}

MODULES =	lang/python

# Mirage's toolbar needs py-gnome to follow GNOME settings.
# py-gnome is already an indirect dependency for gnome-session:
# gnome-session -> gnome-settings-daemon -> gnome-desktop -> py-gnome.
# People not running GNOME do not need/want this dependency.
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/py-gtk2 \
		devel/xdg-utils

BUILD_DEPENDS = devel/gettext,-tools

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
