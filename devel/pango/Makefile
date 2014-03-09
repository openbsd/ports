# $OpenBSD: Makefile,v 1.87 2014/03/09 22:25:36 ajacoutot Exp $

# XXX when OPENBSD_5_6 is branched
# drop removal of ${SYSCONFDIR}/pango/pango.modules

SHARED_ONLY=		Yes

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.36.2
GNOME_PROJECT=		pango

SHARED_LIBS +=  pango-1.0            3600.0   # 3600.2
SHARED_LIBS +=  pangoft2-1.0         3600.0   # 3600.2
SHARED_LIBS +=  pangoxft-1.0         3600.0   # 3600.2
SHARED_LIBS +=  pangocairo-1.0       3600.0   # 3600.2

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

MODGNOME_TOOLS=		gi

LIB_DEPENDS=		devel/glib2>=2.38.0 \
			devel/harfbuzz

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static

post-install:
	rm ${PREFIX}/lib/pango/1.8.0/modules/*.la

.include <bsd.port.mk>
