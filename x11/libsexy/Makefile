# $OpenBSD: Makefile,v 1.17 2015/08/19 18:55:04 sthen Exp $

COMMENT=	collection of additional GTK widgets

DISTNAME=	libsexy-0.1.11
REVISION=	10

SHARED_LIBS +=  sexy                 0.0      # .2.4
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.chipx86.com/wiki/Libsexy

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += ffi graphite2 gthread-2.0 harfbuzz lzma pthread xcb-render
WANTLIB += xcb xcb-shm xml2 z

MASTER_SITES=	http://releases.chipx86.com/libsexy/libsexy/

CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2 \
		textproc/libxml

.include <bsd.port.mk>
