# $OpenBSD: Makefile,v 1.27 2012/01/13 19:42:38 landry Exp $

COMMENT=	Xfce4 network load monitor panel plugin

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	netload

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS+=	x11/xfce4/libxfce4ui

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xfce4util xfce4ui-1 z

.include <bsd.port.mk>
