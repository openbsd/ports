# $OpenBSD: Makefile,v 1.27 2020/07/25 06:45:26 landry Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.1.1
XFCE_PLUGIN=	time-out

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB=	xfce4panel-2.0

WANTLIB += X11 cairo gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl xfce4ui-2 xfce4util

.include <bsd.port.mk>
