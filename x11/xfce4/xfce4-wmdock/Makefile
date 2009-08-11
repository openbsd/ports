# $OpenBSD: Makefile,v 1.7 2009/08/11 08:38:42 ajacoutot Exp $

COMMENT=	Xfce4 WindowMaker dockapps wrapper panel plugin

XFCE_VERSION=	0.2.0
XFCE_PLUGIN=	wmdock
PKGNAME=	${DISTNAME:S/-plugin//}p2

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	wnck-1.>=21::devel/libwnck

WANTLIB=	ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png startup-notification-1 xfce4util z xfcegui4 \
		pthread-stubs xcb

.include <bsd.port.mk>
