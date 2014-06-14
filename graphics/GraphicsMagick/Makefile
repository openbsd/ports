# $OpenBSD: Makefile,v 1.34 2014/06/14 10:34:45 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	image processing tools with stable ABI

DISTNAME=	GraphicsMagick-1.3.19
CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=graphicsmagick/}
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS=	GraphicsMagick		4.1 \
		GraphicsMagick++	3.0 \
		GraphicsMagickWand	3.1 \

HOMEPAGE=	http://www.graphicsmagick.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# http://www.graphicsmagick.org/www/Copyright.html
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext bz2 c freetype jasper jbig jpeg lcms2 \
			ltdl lzma m png16 pthread stdc++ tiff webp wmflite-0.2 \
			xcb xml2 z

MODULES=		converters/libiconv

LIB_DEPENDS=		archivers/bzip2 \
			archivers/xz \
			devel/libtool,-ltdl \
			graphics/jasper \
			graphics/jbigkit \
			graphics/lcms2 \
			graphics/libwebp \
			graphics/libwmf \
			graphics/png \
			graphics/tiff \
			textproc/libxml
RUN_DEPENDS=		print/ghostscript/gnu \
			print/transfig
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--with-modules \
			--with-perl \
			--with-quantum-depth=16 \
			--without-dps \
			--without-fpx \
			--without-gslib \
			--without-trio \
			--disable-ltdl-install
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

post-build:
	@cd ${WRKBUILD}/PerlMagick && perl Makefile.PL && \
	perl -pi -e s,'^LDLOADLIBS = ','LDLOADLIBS = -lGraphicsMagick ', \
		Makefile && ${MAKE} ${MAKE_FLAGS}

post-install:
	@cd ${WRKBUILD}/PerlMagick && ${MAKE} ${MAKE_FLAGS} ${FAKE_TARGET}
	@perl -pi -e s,'-L${WRKBUILD}/(magick|wand)/.libs','',g \
		${PREFIX}/bin/GraphicsMagick++-config \
		${PREFIX}/bin/GraphicsMagick-config
	@find ${PREFIX}/lib/GraphicsMagick/modules-Q16 -name '*.a' -print | xargs rm

.include <bsd.port.mk>
