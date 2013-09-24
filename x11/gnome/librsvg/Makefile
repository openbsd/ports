# $OpenBSD: Makefile,v 1.90 2013/09/24 10:05:15 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.36.4
REVISION=	4

SHARED_LIBS +=  rsvg-2               38.0     # 38.4

CATEGORIES=	devel graphics

HOMEPAGE=	https://live.gnome.org/LibRsvg

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo croco-0.6 expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	gi vala

LIB_DEPENDS=	devel/pango \
		graphics/gdk-pixbuf2 \
		textproc/libxml \
		www/libcroco

CONFIGURE_ARGS=	--disable-gtk-theme \
		--disable-tools \
		--disable-rsvg-view

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
