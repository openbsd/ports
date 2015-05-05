# $OpenBSD: Makefile,v 1.57 2015/05/05 17:00:20 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	graphics library for GNOME

GNOME_PROJECT=	libgnomecanvas
GNOME_VERSION=	2.30.3
REVISION=	4

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	gnomecanvas-2        2002.0   # .2001.0

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB+= Xinerama Xrandr Xrender Xxf86vm art_lgpl_2 atk-1.0 cairo drm
WANTLIB+= expat ffi fontconfig freetype gailutil gdk-x11-2.0
WANTLIB+= gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0
WANTLIB+= gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz lzma m
WANTLIB+= pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB+= pthread pthread-stubs stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libglade2 \
		graphics/libart

CONFIGURE_ARGS=	--enable-glade
MODGNOME_LDFLAGS=-L${X11BASE}/lib

TEST_IS_INTERACTIVE= x11

post-install:
	rm ${PREFIX}/lib/libglade/2.0/*.{a,la}

.include <bsd.port.mk>
