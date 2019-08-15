# $OpenBSD: Makefile,v 1.25 2019/08/15 07:04:38 landry Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.0.3
XFCE_PLUGIN=	time-out

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB=	xfce4panel-1.0

WANTLIB += cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl xfce4ui-1 xfce4util

.include <bsd.port.mk>
