# $OpenBSD: Makefile,v 1.80 2013/04/16 13:17:00 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.34.0
GNOME_PROJECT=		pango

SHARED_LIBS +=  pango-1.0            3400.0   # 3400.0
SHARED_LIBS +=  pangoft2-1.0         3400.0   # 3400.0
SHARED_LIBS +=  pangoxft-1.0         3400.0   # 3400.0
SHARED_LIBS +=  pangocairo-1.0       3400.0   # 3400.0

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xrender c cairo expat ffi fontconfig>=8 freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz icudata icule icuuc m pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gi

LIB_DEPENDS=		devel/glib2>=2.36.0 \
			devel/harfbuzz

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static

post-install:
	rm ${PREFIX}/lib/pango/1.8.0/modules/*.la

.include <bsd.port.mk>
