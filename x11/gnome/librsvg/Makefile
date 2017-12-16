# $OpenBSD: Makefile,v 1.125 2017/12/16 11:37:03 ajacoutot Exp $

COMMENT=		SAX-based render library for SVG files

GNOME_PROJECT=		librsvg
GNOME_VERSION=		2.40.20

SHARED_LIBS +=  rsvg-2               38.2     # 42.20

CATEGORIES=		devel graphics

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo croco-0.6 expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 harfbuzz iconv intl
WANTLIB += lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2 \
			textproc/libxml \
			www/libcroco

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-tools

# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
