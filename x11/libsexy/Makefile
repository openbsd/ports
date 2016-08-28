# $OpenBSD: Makefile,v 1.18 2016/08/28 16:01:42 jca Exp $

COMMENT=	collection of additional GTK widgets

DISTNAME=	libsexy-0.1.11
REVISION=	11

SHARED_LIBS +=  sexy                 0.0      # .2.4
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.chipx86.com/wiki/Libsexy

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += iconv intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

MASTER_SITES=	http://releases.chipx86.com/libsexy/libsexy/

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	devel/gettext \
		x11/gtk+2 \
		textproc/libxml

.include <bsd.port.mk>
