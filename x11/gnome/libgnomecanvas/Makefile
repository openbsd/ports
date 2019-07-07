# $OpenBSD: Makefile,v 1.64 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=	graphics library for GNOME

GNOME_PROJECT=	libgnomecanvas
GNOME_VERSION=	2.30.3
REVISION=	8

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	gnomecanvas-2        2002.0   # .2001.0

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB+= Xrender art_lgpl_2 atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB+= fribidi gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB+= glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB+= gtk-x11-2.0 harfbuzz iconv intl lzma m pango-1.0
WANTLIB+= pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread xcb
WANTLIB+= xcb-render xcb-shm xml2 z

MODULES=	x11/gnome

LIB_DEPENDS=	devel/libglade2 \
		graphics/libart

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-glade
MODGNOME_LDFLAGS=-L${X11BASE}/lib

TEST_IS_INTERACTIVE= x11

post-install:
	rm ${PREFIX}/lib/libglade/2.0/*.{a,la}

.include <bsd.port.mk>
