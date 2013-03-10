# $OpenBSD: Makefile,v 1.76 2013/03/10 09:07:12 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.32.6
GNOME_PROJECT=		pango
REVISION=		0

SHARED_LIBS +=  pango-1.0            3200.1   # 3200.6
SHARED_LIBS +=  pangoft2-1.0         3200.1   # 3200.6
SHARED_LIBS +=  pangoxft-1.0         3200.1   # 3200.6
SHARED_LIBS +=  pangocairo-1.0       3200.1   # 3200.6

CATEGORIES=		devel x11

HOMEPAGE=		http://www.pango.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xft Xrender c cairo expat ffi fontconfig>=8 freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz icudata icule icuuc m pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		devel/glib2 \
			devel/harfbuzz>=0.9.13p0

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static

post-install:
	rm ${PREFIX}/lib/pango/1.8.0/modules/*.la

.include <bsd.port.mk>
