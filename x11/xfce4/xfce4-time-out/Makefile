# $OpenBSD: Makefile,v 1.8 2009/08/11 08:38:42 ajacoutot Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	0.1.0
XFCE_PLUGIN=	time-out
PKGNAME=	${DISTNAME:S/-plugin//}p5

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z xfcegui4 \
		pthread-stubs xcb

.include <bsd.port.mk>
