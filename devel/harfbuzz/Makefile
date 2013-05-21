# $OpenBSD: Makefile,v 1.12 2013/05/21 16:34:53 ajacoutot Exp $

COMMENT=	text shaping library

DISTNAME=	harfbuzz-0.9.17
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  harfbuzz             3.1      # 917.0

CATEGORIES=	devel x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 graphite2 icudata icule icuuc
WANTLIB += m pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	http://www.freedesktop.org/software/harfbuzz/release/

MODULES=	devel/gettext

USE_GMAKE=	Yes

LIB_DEPENDS=	graphics/cairo \
		graphics/graphite2 \
		textproc/icu4c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
