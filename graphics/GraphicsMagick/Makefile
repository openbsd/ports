# $OpenBSD: Makefile,v 1.24 2012/06/19 13:20:19 okan Exp $

SHARED_ONLY=	Yes

COMMENT=	image processing tools with stable ABI

DISTNAME=	GraphicsMagick-1.3.12
REVISION=	4
CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=graphicsmagick/}

SHARED_LIBS=	GraphicsMagick		4.0 \
		GraphicsMagick++	3.0 \
		GraphicsMagickWand	3.0 \

HOMEPAGE=	http://www.graphicsmagick.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# http://www.graphicsmagick.org/www/Copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		bz2 c jasper jbig lcms ltdl jpeg xcb \
			m png pthread stdc++ tiff xml2 z \
			ICE SM X11 Xext freetype wmflite-0.2 xcb

MODULES=		converters/libiconv

LIB_DEPENDS=		archivers/bzip2 \
			devel/libtool,-ltdl \
			graphics/jasper \
			graphics/jbigkit \
			graphics/lcms \
			graphics/libwmf \
			graphics/png \
			graphics/tiff \
			textproc/libxml

RUN_DEPENDS=		print/ghostscript/gnu \
			print/transfig
BUILD_DEPENDS=		${RUN_DEPENDS}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-quantum-depth=16 \
			--with-wmf \
			--without-dps \
			--without-fpx \
			--without-gslib \
			--without-trio \
			--with-modules \
			--with-perl \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--disable-ltdl-install

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread" \
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

.include <bsd.port.mk>
