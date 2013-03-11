# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:06 espie Exp $

COMMENT=	text shaping library

DISTNAME=	harfbuzz-0.9.13
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

SHARED_LIBS +=  harfbuzz                  3.0 # 913.0

CATEGORIES=	devel x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 graphite2 gthread-2.0 icudata
WANTLIB += icule icuuc m pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm z

MASTER_SITES=	http://www.freedesktop.org/software/harfbuzz/release/

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

LIB_DEPENDS=	graphics/cairo \
		graphics/graphite2 \
		textproc/icu4c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
