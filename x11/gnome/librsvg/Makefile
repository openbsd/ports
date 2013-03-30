# $OpenBSD: Makefile,v 1.86 2013/03/30 20:07:23 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	SAX-based render library for SVG files

GNOME_PROJECT=	librsvg
GNOME_VERSION=	2.36.4
REVISION=	1

SHARED_LIBS +=	rsvg-2         38.0           # .38.0

CATEGORIES=	devel

HOMEPAGE=	https://live.gnome.org/LibRsvg

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo croco-0.6 expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 harfbuzz icudata
WANTLIB += icule icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	goi vala

LIB_DEPENDS=	graphics/gdk-pixbuf2 \
		devel/pango \
		www/libcroco \
		textproc/libxml

CONFIGURE_ARGS=	--disable-gtk-theme \
		--disable-tools \
		--disable-rsvg-view

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

### https://bugzilla.gnome.org/show_bug.cgi?id=653323
AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.12
BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool \
		textproc/gtk-doc

pre-configure:
	cd ${WRKSRC} && env \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i
###

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
