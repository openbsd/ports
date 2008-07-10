# $OpenBSD: Makefile,v 1.22 2008/07/10 11:38:03 landry Exp $

COMMENT=	see temperature/weather conditions on the xfce4 panel

XFCE_VERSION=	0.6.2
XFCE_PLUGIN=	weather
PKGNAME=	${DISTNAME:S/-plugin//}p0

# BSD
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
		pangoft2-1.0 pixman-1 png xfce4util xfcegui4 z

.include <bsd.port.mk>
