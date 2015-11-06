# $OpenBSD: Makefile,v 1.139 2015/11/06 20:37:21 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		image processing tools

VER=			6.9.2
DASHVER=		5
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		ImageMagick-${VER}.${DASHVER}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=	MagickCore-6.Q16     0.0      # 2.0
SHARED_LIBS +=	MagickWand-6.Q16     0.0      # 2.0
SHARED_LIBS +=	Magick++-6.Q16       0.0      # 6.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.imagemagick.org

MASTER_SITES=		http://www.imagemagick.org/download/releases/ \
			ftp://sunsite.icm.edu.pl/packages/ImageMagick/

# http://www.imagemagick.org/script/license.php
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xt bz2 c djvulibre expat
WANTLIB += fftw3 fontconfig freetype jbig jpeg lcms2 ltdl lzma
WANTLIB += m openjp2 perl png pthread pthread-stubs stdc++ tiff
WANTLIB += webp wmflite-0.2 xcb xml2 z

MODULES =		converters/libiconv

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			devel/libtool,-ltdl \
			graphics/djvulibre \
			graphics/jbigkit \
			graphics/png \
			graphics/tiff \
			graphics/lcms2 \
			graphics/libwebp \
			graphics/libwmf \
			graphics/openjp2 \
			math/fftw3 \
			textproc/libxml
#	XXX		graphics/libwmf
# ^^ doesn't detect properly in configure

RUN_DEPENDS =		graphics/netpbm \
			print/ghostscript/gnu \
			print/transfig
BUILD_DEPENDS =		${RUN_DEPENDS}

ALL_TARGET=		all perl-build

CONFIGURE_STYLE=	autoconf
LIBTOOL_FLAGS=		--tag=disable-static
AUTOCONF_VERSION=	2.69
USE_GMAKE=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--without-gcc-arch \
			--with-gs-font-dir=${LOCALBASE}/share/fonts/ghostscript \
			--with-modules \
			--with-perl \
			--with-perl-options='MAKE=${MAKE_PROGRAM}' \
			--with-quantum-depth=16 \
			--with-wmf \
			--without-dps \
			--without-fpx \
			--without-gvc \
			--without-lqr \
			--without-openexr \
			--without-pango \
			--without-rsvg \
			--disable-openmp

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} $$(find . -name '*.pc.in')

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ImageMagick
.for i in coder.xml colors.xml delegates.xml log.xml magic.xml \
	mime.xml policy.xml quantization-table.xml \
	thresholds.xml type-dejavu.xml type-ghostscript.xml \
	type-windows.xml type.xml
	${INSTALL_DATA} ${WRKSRC}/config/$i ${PREFIX}/share/examples/ImageMagick
.endfor

.include <bsd.port.mk>
