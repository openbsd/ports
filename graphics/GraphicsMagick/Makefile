# $OpenBSD: Makefile,v 1.35 2014/09/10 00:07:39 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	image processing tools with stable ABI

DISTNAME=	GraphicsMagick-1.3.20
CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=graphicsmagick/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	GraphicsMagick		4.2 \
		GraphicsMagick++	3.1 \
		GraphicsMagickWand	3.2 \

HOMEPAGE=	http://www.graphicsmagick.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# http://www.graphicsmagick.org/www/Copyright.html
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext bz2 c freetype jasper jbig \
			jpeg lcms2 ltdl lzma m png16 pthread pthread-stubs \
			stdc++ tiff webp wmflite-0.2 xcb xml2 z

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
