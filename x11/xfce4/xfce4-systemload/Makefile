# $OpenBSD: Makefile,v 1.16 2008/07/08 12:54:43 landry Exp $

COMMENT=	displays cpu/memory/swap/uptime in xfce4 panel

XFCE_VERSION=	0.4.2
XFCE_PLUGIN=	systemload
PKGNAME=	${DISTNAME:S/-plugin//}p2

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	X11 Xdmcp Xrender Xau Xdamage fontconfig freetype kvm \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		pixman-1 xfce4util xfcegui4

.include <bsd.port.mk>
