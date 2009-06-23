# $OpenBSD: Makefile,v 1.18 2009/06/23 20:25:15 landry Exp $

COMMENT=	Xfce4 cpu/memory/swap/uptime monitor panel plugin

XFCE_VERSION=	0.4.2
XFCE_PLUGIN=	systemload
PKGNAME=	${DISTNAME:S/-plugin//}p4

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
		pixman-1 xfce4util xfcegui4 gio-2.0

.include <bsd.port.mk>
