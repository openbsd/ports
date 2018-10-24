# $OpenBSD: Makefile,v 1.86 2018/10/24 14:28:06 sthen Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.0.9
SHARED_LIBS=	tiff	40.2	# 7.6
SHARED_LIBS+=	tiffxx	40.1	# 7.6
CATEGORIES=	graphics
REVISION=	0

MASTER_SITES=	http://download.osgeo.org/libtiff/

HOMEPAGE=	http://www.simplesystems.org/libtiff/

LIB_DEPENDS=	graphics/jpeg
WANTLIB=	c m ${COMPILER_LIBCXX} z jpeg

COMPILER =		base-clang ports-gcc base-gcc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-jbig \
		--disable-lzma \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	cd ${PREFIX}/share/doc/tiff && mv html/* . && rmdir html

.include <bsd.port.mk>
