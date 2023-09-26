COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.5.1
SHARED_LIBS=	tiff	42.0	# 13.0
SHARED_LIBS+=	tiffxx	42.0	# 13.0
CATEGORIES=	graphics

SITES=		https://download.osgeo.org/libtiff/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://libtiff.gitlab.io/libtiff/

LIB_DEPENDS=	graphics/jpeg \
		archivers/xz \
		archivers/zstd
WANTLIB=	c ${COMPILER_LIBCXX} jpeg lzma m z zstd

COMPILER =	base-clang ports-gcc base-gcc
DEBUG_PACKAGES =${BUILD_PACKAGES}

# BSD
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-jbig \
		--disable-libdeflate \
		--disable-webp \
		--disable-sphinx \
		--disable-contrib \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

.include <bsd.port.mk>
