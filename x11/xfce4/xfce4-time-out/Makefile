# $OpenBSD: Makefile,v 1.22 2018/06/29 22:16:37 espie Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.0.2
XFCE_PLUGIN=	time-out
REVISION=	2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 xfce4ui-1 xfce4util intl

.include <bsd.port.mk>
