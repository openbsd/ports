# $OpenBSD: Makefile,v 1.7 2013/03/09 15:25:28 ajacoutot Exp $

COMMENT=	text shaping library

DISTNAME=	harfbuzz-0.9.13
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  harfbuzz                  3.0 # 913.0

CATEGORIES=	devel x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 icudata icule icuuc
WANTLIB += m pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	http://www.freedesktop.org/software/harfbuzz/release/

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

LIB_DEPENDS=	graphics/cairo \
		textproc/icu4c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
