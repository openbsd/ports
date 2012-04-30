# $OpenBSD: Makefile,v 1.14 2012/04/30 13:23:52 landry Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.0.1
XFCE_PLUGIN=	time-out

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

# XXX --as-needed
WANTLIB += cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 xfce4ui-1 xfce4util

#WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
#WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
#WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
#WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
#WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs xcb
#WANTLIB += xcb-render xcb-shm xfce4util xfce4ui-1 z

.include <bsd.port.mk>
