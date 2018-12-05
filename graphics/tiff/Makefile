# $OpenBSD: Makefile,v 1.87 2018/12/05 20:35:25 naddy Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.0.10
SHARED_LIBS=	tiff	40.3	# 9.0
SHARED_LIBS+=	tiffxx	40.2	# 9.0
CATEGORIES=	graphics

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
		--disable-webp \
		--disable-zstd \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	cd ${PREFIX}/share/doc/tiff && mv html/* . && rmdir html

.include <bsd.port.mk>
