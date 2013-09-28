# $OpenBSD: Makefile,v 1.56 2013/09/28 08:51:22 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	graphics library for GNOME

GNOME_PROJECT=	libgnomecanvas
GNOME_VERSION=	2.30.3
REVISION=	3

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	gnomecanvas-2        2002.0   # .2001.0

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png xml2 z pthread-stubs xcb xcb-render ffi stdc++ \
		gthread-2.0 glade-2.0 art_lgpl_2 GL Xxf86vm drm xcb-shm

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
