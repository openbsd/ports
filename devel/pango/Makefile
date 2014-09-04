# $OpenBSD: Makefile,v 1.97 2014/09/04 05:32:44 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.36.7
GNOME_PROJECT=		pango

SHARED_LIBS +=  pango-1.0            3600.0   # 3600.7
SHARED_LIBS +=  pangoft2-1.0         3600.0   # 3600.7
SHARED_LIBS +=  pangoxft-1.0         3600.0   # 3600.7
SHARED_LIBS +=  pangocairo-1.0       3600.0   # 3600.7

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xrender c cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz m pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		devel/glib2>=2.38.0 \
			devel/harfbuzz

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/pango/1.8.0/modules/*.{a,la}

.include <bsd.port.mk>
