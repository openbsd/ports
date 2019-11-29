# $OpenBSD: Makefile,v 1.90 2019/11/29 16:43:01 naddy Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.1.0
SHARED_LIBS=	tiff	40.4	# 10.0
SHARED_LIBS+=	tiffxx	40.2	# 10.0
CATEGORIES=	graphics

MASTER_SITES=	https://download.osgeo.org/libtiff/

HOMEPAGE=	http://www.simplesystems.org/libtiff/

LIB_DEPENDS=	graphics/jpeg \
		archivers/xz \
		archivers/zstd
WANTLIB=	c ${COMPILER_LIBCXX} jpeg lzma m z zstd

COMPILER =	base-clang ports-gcc base-gcc

# BSD
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-jbig \
		--disable-webp \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	cd ${PREFIX}/share/doc/tiff && mv html/* . && rmdir html

.include <bsd.port.mk>
