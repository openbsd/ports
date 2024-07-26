COMMENT=	image processing tools with stable ABI

DISTNAME=	GraphicsMagick-1.3.43
CATEGORIES=	graphics devel
SITES=		${SITE_SOURCEFORGE:=graphicsmagick/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	GraphicsMagick		9.4 \
		GraphicsMagick++	6.1 \
		GraphicsMagickWand	4.0

HOMEPAGE=	http://www.graphicsmagick.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# http://www.graphicsmagick.org/www/Copyright.html
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xdmcp Xext aom brotlicommon
WANTLIB += brotlidec brotlienc bz2 c de265 freetype heif hwy iconv
WANTLIB += jasper jbig jpeg jxl jxl_cms jxl_threads lcms2 ltdl
WANTLIB += lzma m png sharpyuv tiff webp webpmux wmflite-0.2 x265
WANTLIB += xcb xml2 z zstd

WANTLIB += perl # uses perl ABI

COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		archivers/bzip2 \
			archivers/xz \
			archivers/zstd \
			converters/libiconv \
			devel/libtool,-ltdl \
			graphics/jasper \
			graphics/jbigkit \
			graphics/lcms2 \
			graphics/libwebp \
			graphics/libjxl \
			graphics/libwmf \
			graphics/png \
			graphics/tiff \
			multimedia/libheif \
			textproc/libxml
RUN_DEPENDS=		print/ghostscript/gnu \
			print/transfig
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-shared \
			--with-gs-font-dir=${LOCALBASE}/share/fonts/ghostscript \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--with-modules \
			--with-perl \
			--with-quantum-depth=16 \
			--without-dps \
			--without-trio \
			--disable-ltdl-install \
			--disable-openmp
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

post-build:
	@cd ${WRKBUILD}/PerlMagick && perl Makefile.PL && \
	sed -i s,'^LDLOADLIBS = ','LDLOADLIBS = -lGraphicsMagick ', \
		Makefile && ${MAKE} ${MAKE_FLAGS}

post-install:
	@cd ${WRKBUILD}/PerlMagick && ${MAKE} ${MAKE_FLAGS} ${FAKE_TARGET}
	@perl -pi -e s,'-L${WRKBUILD}/(magick|wand)/.libs','',g \
		${PREFIX}/bin/GraphicsMagick++-config \
		${PREFIX}/bin/GraphicsMagick-config
	@find ${PREFIX}/lib/GraphicsMagick/modules-Q16 -name '*.a' -delete

.include <bsd.port.mk>
