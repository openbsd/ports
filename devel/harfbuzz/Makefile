# $OpenBSD: Makefile,v 1.6 2013/01/23 18:09:28 ajacoutot Exp $

COMMENT=	text shaping library

DISTNAME=	harfbuzz-0.9.12
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  harfbuzz                  2.0 # 912.0

CATEGORIES=	devel x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender c cairo expat ffi fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 icudata icule
WANTLIB += icuuc m pcre pixman-1 png pthread pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	http://www.freedesktop.org/software/harfbuzz/release/

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

LIB_DEPENDS=	graphics/cairo \
		textproc/icu4c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/{check-internal-symbols,check-exported-symbols}.sh

.include <bsd.port.mk>
