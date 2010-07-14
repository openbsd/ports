# $OpenBSD: Makefile,v 1.26 2010/07/14 11:48:13 landry Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	Xfce4 battery monitor panel plugin

XFCE_VERSION=	0.5.0
XFCE_PLUGIN=	battery
REVISION=	8

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pthread-stubs xcb \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util xfcegui4 z

.include <bsd.port.mk>
