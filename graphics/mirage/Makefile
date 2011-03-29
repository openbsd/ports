# $OpenBSD: Makefile,v 1.1.1.1 2011/03/29 07:07:12 ajacoutot Exp $

COMMENT =	fast and simple GTK+ image viewer

MODPY_EGG_VERSION = 0.9.5.2
DISTNAME =	mirage-${MODPY_EGG_VERSION}

CATEGORIES =	graphics

HOMEPAGE =	http://mirageiv.berlios.de/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11

MASTER_SITES =	${MASTER_SITE_BERLIOS:=mirageiv/}

MODULES =	lang/python

# Mirage's toolbar needs py-gnome to follow GNOME settings.
# py-gnome is already an indirect dependency for gnome-session:
# gnome-session -> gnome-settings-daemon -> gnome-desktop -> py-gnome.
# People not running GNOME do not need/want this dependency.
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/py-gtk2 \
		devel/xdg-utils

NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
