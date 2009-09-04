# $OpenBSD: Makefile,v 1.29 2009/09/04 18:49:25 landry Exp $

COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.7.3
XFCE_PLUGIN=	weather

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	xml2.>=9::textproc/libxml

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png xfce4util xfcegui4 z \
		ICE SM gio-2.0 pcre startup-notification-1 pthread-stubs xcb

.include <bsd.port.mk>
