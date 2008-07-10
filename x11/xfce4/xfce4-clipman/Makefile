# $OpenBSD: Makefile,v 1.17 2008/07/10 11:38:03 landry Exp $

COMMENT=	clipboard history plugin for the xfce4 panel

XFCE_VERSION=	0.8.0
XFCE_PLUGIN=	clipman
PKGNAME=	${DISTNAME:S/-plugin//}p3

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	X11 Xdmcp Xrender Xau Xdamage fontconfig freetype m z c \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 pixman-1 cairo glitz png \
		xfce4util xfcegui4

.include <bsd.port.mk>
