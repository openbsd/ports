# $OpenBSD: Makefile,v 1.18 2016/10/01 11:54:17 naddy Exp $

COMMENT=	tiling window manager

DISTNAME=	parti-all-0.0.6
PKGNAME=	${DISTNAME:S/-all//}
REVISION=	10
CATEGORIES=	x11

HOMEPAGE=	https://github.com/njsmith/partiwm

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=partiwm/}

MODULES=	lang/python

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst atk-1.0 cairo expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z ${MODPY_WANTLIB}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ipython \
		devel/pyrex>=0.9.9 \
		x11/dbus-python \
		x11/py-gtk2

NO_TEST=	Yes

.include <bsd.port.mk>
