# $OpenBSD: Makefile,v 1.103 2016/08/29 13:40:24 ajacoutot Exp $

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.40.2
GNOME_PROJECT=		pango

SHARED_LIBS +=  pango-1.0            3800.0   # 4000.2
SHARED_LIBS +=  pangoft2-1.0         3800.0   # 4000.2
SHARED_LIBS +=  pangoxft-1.0         3800.0   # 4000.2
SHARED_LIBS +=  pangocairo-1.0       3800.0   # 4000.2

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

LIB_DEPENDS=		devel/glib2 \
			devel/harfbuzz

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
