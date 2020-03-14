# $OpenBSD: Makefile,v 1.25 2020/03/14 08:32:20 landry Exp $

COMMENT =	GVfs mountpoint manager

XFCE_VERSION =	0.5.1
XFCE_GOODIE =	gigolo

CATEGORIES =	x11

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	http://www.uvena.de/gigolo/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
CONFIGURE_STYLE =	gnu
RUN_DEPENDS +=	x11/gnome/gvfs
LIB_DEPENDS =	x11/gtk+3

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0

.include <bsd.port.mk>
