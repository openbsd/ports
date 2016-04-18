# $OpenBSD: Makefile,v 1.102 2016/04/18 06:47:47 ajacoutot Exp $

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.40.1
GNOME_PROJECT=		pango

SHARED_LIBS +=  pango-1.0            3800.0   # 4000.1
SHARED_LIBS +=  pangoft2-1.0         3800.0   # 4000.1
SHARED_LIBS +=  pangoxft-1.0         3800.0   # 4000.1
SHARED_LIBS +=  pangocairo-1.0       3800.0   # 4000.1

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xrender c cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += iconv intl m pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2>=2.48.0 \
			devel/harfbuzz

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
