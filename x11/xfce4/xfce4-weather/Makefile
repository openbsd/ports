# $OpenBSD: Makefile,v 1.24 2009/06/17 19:09:21 landry Exp $

COMMENT=	see temperature/weather conditions on the xfce4 panel

XFCE_VERSION=	0.6.4
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
		ICE SM gio-2.0 pcre startup-notification-1

.include <bsd.port.mk>
