# $OpenBSD: Makefile,v 1.10 2013/08/07 21:33:04 naddy Exp $

COMMENT=	tiling window manager

DISTNAME=	parti-all-0.0.6
PKGNAME=	${DISTNAME:S/-all//}
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	https://partiwm.googlecode.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

MODULES=	devel/gettext \
		lang/python

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst atk-1.0 cairo expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-render-util
WANTLIB += z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ipython \
		devel/pyrex>=0.9.9 \
		x11/dbus-python \
		x11/py-gtk2

USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
