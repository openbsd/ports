# $OpenBSD: Makefile,v 1.29 2010/07/27 12:58:42 landry Exp $

COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfcegui4
XFCE_VERSION=	4.6.4
REVISION=	0

SHARED_LIBS=	xfcegui4	5.0	\
		xfce4kbd-private	5.0	# 6.5

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	::x11/xfce4/xfconf \
		::devel/startup-notification \
		::devel/libglade2

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0  gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xfce4util xml2 z \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event glade-2.0 \
		gthread-2.0 xcb-render xcb-render-util xfconf-0 startup-notification-1

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

.include <bsd.port.mk>
