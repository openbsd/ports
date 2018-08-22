# $OpenBSD: Makefile,v 1.179 2018/08/22 22:53:47 sthen Exp $

COMMENT=		image processing tools

VER=			6.9.10
DASHVER=		10
REVISION=		0
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		ImageMagick-${VER}.${DASHVER}
PORTROACH=		site:https://www.imagemagick.org/download/ limit:6.*
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=	MagickCore-6.Q16     6.2      # 6.0
SHARED_LIBS +=	MagickWand-6.Q16     4.0      # 6.0
SHARED_LIBS +=	Magick++-6.Q16       5.2      # 8.0

CATEGORIES=		graphics

HOMEPAGE=		https://www.imagemagick.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=		https://www.imagemagick.org/download/releases/ \
			ftp://sunsite.icm.edu.pl/packages/ImageMagick/

# http://www.imagemagick.org/script/license.php
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xdmcp Xext Xt bz2
WANTLIB += c djvulibre expat fftw3 fontconfig freetype iconv jasper
WANTLIB += jbig jpeg lcms2 lzma m openjp2 perl png raw_r tiff webp
WANTLIB += webpmux xcb xml2 z

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			converters/libiconv \
			graphics/djvulibre \
			graphics/jbigkit \
			graphics/lcms2 \
			graphics/libraw \
			graphics/libwebp \
			graphics/openjp2 \
			graphics/png \
			graphics/tiff \
			math/fftw3 \
			textproc/libxml
BUILD_DEPENDS =		print/ghostscript/gnu

ALL_TARGET=		all perl-build

CONFIGURE_STYLE=	autoconf
LIBTOOL_FLAGS=		--tag=disable-static
AUTOCONF_VERSION=	2.69
USE_GMAKE=		Yes
CONFIGURE_ARGS+=	--without-gcc-arch \
			--with-gs-font-dir=${LOCALBASE}/share/fonts/ghostscript \
			--with-perl \
			--with-perl-options='MAKE=${MAKE_PROGRAM}' \
			--with-quantum-depth=16 \
			--without-dps \
			--without-flif \
			--without-fpx \
			--without-gvc \
			--without-lqr \
			--without-openexr \
			--without-pango \
			--without-raqm \
			--without-rsvg \
			--without-wmf \
			--disable-openmp

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

FAKE_FLAGS=		CONFIGURE_PATH=${PREFIX}/share/examples/ImageMagick

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} $$(find . -name '*.pc.in')

xxpost-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ImageMagick

.include <bsd.port.mk>
