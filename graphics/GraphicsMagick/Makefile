# $OpenBSD: Makefile,v 1.18 2011/01/15 16:17:33 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	image processing tools with stable ABI

DISTNAME=	GraphicsMagick-1.3.12
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

WANTLIB=		bz2 c iconv jasper jbig lcms ltdl jpeg \
			m png pthread stdc++ tiff xml2 z

LIB_DEPENDS=		archivers/bzip2 \
			devel/libtool,-ltdl \
			graphics/jasper \
			graphics/jbigkit \
			graphics/lcms \
			graphics/png \
			graphics/tiff \
			textproc/libxml

USE_LIBTOOL=		Yes
USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-quantum-depth=16 \
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
			PTHREAD_LIBS="-pthread" \
			ac_cv_path_LaunchDelegate=no

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS+=		print/ghostscript/gnu,no_x11
RUN_DEPENDS+=		print/ghostscript/gnu,no_x11
CONFIGURE_ENV+=		ac_cv_path_FIGDecodeDelegate=no
CONFIGURE_ARGS+=	--without-x \
			--without-ttf \
			--without-wmf
PKG_ARGS+=		-Dx11=0
.else
WANTLIB+=		ICE SM X11 Xau Xdmcp Xext freetype pthread-stubs \
			wmflite-0.2 xcb
LIB_DEPENDS+=		graphics/libwmf
BUILD_DEPENDS+=		print/ghostscript/gnu \
			print/transfig
RUN_DEPENDS+=		print/ghostscript/gnu \
			print/transfig
CONFIGURE_ARGS+=	--with-wmf
PKG_ARGS+=		-Dx11=1
.endif

# with FLAVOR=no_x11, some regession tests do not pass
# due to the absence of freetype

post-build:
	@cd ${WRKBUILD}/PerlMagick && perl Makefile.PL && ${MAKE} ${MAKE_FLAGS}

post-install:
	@cd ${WRKBUILD}/PerlMagick && ${MAKE} ${MAKE_FLAGS} ${FAKE_TARGET}

.include <bsd.port.mk>
