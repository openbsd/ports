# $OpenBSD: Makefile,v 1.5 2013/01/05 13:29:03 ajacoutot Exp $

COMMENT=	text shaping library

DISTNAME=	harfbuzz-0.9.10
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  harfbuzz                  2.0 # 909.0

CATEGORIES=	devel x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.freedesktop.org/software/harfbuzz/release/

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += c cairo drm expat ffi fontconfig freetype glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 icudata icule icuuc m pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

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
