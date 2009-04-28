# $OpenBSD: Makefile,v 1.24 2009/04/28 19:43:59 landry Exp $

COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfcegui4
SHARED_LIBS=	xfcegui4	5.0	\
		xfce4kbd-private	5.0	# 6.5

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	xfconf-0::x11/xfce4/xfconf \
		startup-notification-1::devel/startup-notification \
		glade-2.0::devel/libglade2

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0  gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xfce4util xml2 z

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf
.include <bsd.port.mk>
