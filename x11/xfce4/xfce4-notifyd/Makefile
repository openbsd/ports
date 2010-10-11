# $OpenBSD: Makefile,v 1.6 2010/10/11 08:19:37 jasper Exp $

COMMENT=	Xfce4 alternative notification daemon

XFCE_VERSION=	0.1.0
XFCE_GOODIE=	xfce4-notifyd
REVISION=	3

MASTER_SITES=	http://spuriousinterrupt.org/files/xfce4-notifyd/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	::x11/xfce4/libxfcegui4 \
		::x11/libsexy

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext sexy xfcegui4 \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread xfce4util xfconf-0 xml2 z pthread-stubs \
		gthread-2.0 xcb-render xcb-render-util xcb

.include <bsd.port.mk>
