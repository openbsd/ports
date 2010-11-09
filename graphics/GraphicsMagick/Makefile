# $OpenBSD: Makefile,v 1.16 2010/11/09 09:14:31 espie Exp $

COMMENT=	image processing tools with stable ABI

DISTNAME=	GraphicsMagick-1.3.8
CATEGORIES=	graphics devel

SHARED_LIBS +=	GraphicsMagick       3.0      # .6.0
SHARED_LIBS +=	GraphicsMagick++     3.0      # .6.0
SHARED_LIBS +=	GraphicsMagickWand   3.0      # .4.1

HOMEPAGE=	http://www.graphicsmagick.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=graphicsmagick/}

# http://www.graphicsmagick.org/www/Copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=		c iconv jpeg m z bz2.>=10 jbig.>=1.2 png.>=4 \
			tiff.>=36 lcms.>=1 jasper.>=1 xml2.>=9

LIB_DEPENDS =		::archivers/bzip2 \
			::graphics/jbigkit \
			::graphics/png \
			::graphics/tiff \
			::graphics/lcms \
			::graphics/jasper \
			::textproc/libxml

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-quantum-depth=16 \
			--without-dps \
			--without-fpx \
			--without-modules \
			--without-threads \
			--without-gslib \
			--with-perl \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--disable-ltdl-install

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS +=	:ghostscript-*:print/ghostscript/gnu,no_x11
RUN_DEPENDS +=		:ghostscript-*:print/ghostscript/gnu,no_x11
CONFIGURE_ENV +=	ac_cv_path_FIGDecodeDelegate=no
CONFIGURE_ARGS +=	--without-x \
			--without-ttf \
			--without-wmf
.else
WANTLIB +=		ICE SM X11 Xau Xdmcp Xext freetype pthread-stubs xcb \
			wmflite.>=7
LIB_DEPENDS +=		::graphics/libwmf
BUILD_DEPENDS +=	:ghostscript-*:print/ghostscript/gnu
BUILD_DEPENDS +=	:transfig-*:print/transfig
RUN_DEPENDS +=		:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS +=		:transfig-*:print/transfig
CONFIGURE_ARGS +=	--with-wmf
.endif

# with FLAVOR=no_x11, some regession tests do not pass
# due to the absence of freetype

post-build:
	@cd ${WRKBUILD}/PerlMagick && perl Makefile.PL && ${MAKE} ${MAKE_FLAGS}

post-install:
	@cd ${WRKBUILD}/PerlMagick && ${MAKE} ${MAKE_FLAGS} ${FAKE_TARGET}

.include <bsd.port.mk>
