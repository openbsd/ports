# $OpenBSD: Makefile,v 1.17 2013/03/11 11:46:18 espie Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.0.1
XFCE_PLUGIN=	time-out
REVISION =	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

WANTLIB += cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 xfce4ui-1 xfce4util

.include <bsd.port.mk>
