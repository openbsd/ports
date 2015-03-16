# $OpenBSD: Makefile,v 1.19 2015/03/16 20:42:12 landry Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.0.2
XFCE_PLUGIN=	time-out

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 xfce4ui-1 xfce4util

.include <bsd.port.mk>
