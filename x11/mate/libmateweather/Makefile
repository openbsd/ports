# $OpenBSD: Makefile,v 1.13 2020/03/21 16:14:55 robert Exp $

COMMENT=		weather library for MATE

SHARED_LIBS +=  mateweather               7.9 # 7.9

MATE_PROJECT=		libmateweather

CATEGORIES=		net

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 cairo cairo-gobject epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv idn2 intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png psl pthread
WANTLIB += soup-2.4 sqlite3 unistring xcb xcb-render xcb-shm xml2 z
WANTLIB += brotlicommon brotlidec

MODULES=		x11/gnome

MODGNOME_TOOLS=		gtk-update-icon-cache

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+3

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

.include <bsd.port.mk>
