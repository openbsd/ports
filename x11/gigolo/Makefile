# $OpenBSD: Makefile,v 1.21 2016/11/04 10:00:36 landry Exp $

COMMENT =	GVfs mountpoint manager

XFCE_VERSION =	0.4.2
XFCE_GOODIE =	gigolo
REVISION =	0

CATEGORIES =	x11

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	http://www.uvena.de/gigolo/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
CONFIGURE_STYLE =	gnu
RUN_DEPENDS +=	x11/gnome/gvfs
LIB_DEPENDS =	x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 intl

.include <bsd.port.mk>
