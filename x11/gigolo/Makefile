# $OpenBSD: Makefile,v 1.20 2014/01/09 21:00:17 landry Exp $

COMMENT =	GVfs mountpoint manager

XFCE_VERSION =	0.4.2
XFCE_GOODIE =	gigolo

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
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += z gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

.include <bsd.port.mk>
