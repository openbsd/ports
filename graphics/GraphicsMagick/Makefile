# $OpenBSD: Makefile,v 1.2 2006/10/30 09:25:10 brad Exp $

HOMEPAGE=	http://www.graphicsmagick.org/
CATEGORIES=	devel graphics
COMMENT=	"image processing tools with stable ABI"
DISTNAME=	GraphicsMagick-1.1.7

SHARED_LIBS +=	GraphicsMagick       0.0      # .1.7
SHARED_LIBS +=	GraphicsMagickWand   0.0      # .0.3
SHARED_LIBS +=	GraphicsMagick++     0.0      # .1.2

MASTER_SITES=	ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/ \
		${MASTER_SITE_SOURCEFORGE:=graphicsmagick/}

# very detailed licence info on:
# http://www.graphicsmagick.org/www/Copyright.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-quantum-depth=16 \
			--without-dot \
			--without-dps \
			--without-fpx \
			--without-modules \
			--without-threads \
			--without-perl \
			--without-wmf \
			--without-gslib \
			--disable-ltdl-install

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

FLAVORS=		no_x11
FLAVOR?=

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
USE_LIBTOOL=		Yes

WANTLIB+=		c iconv jpeg m z
LIB_DEPENDS=		bz2.>=10::archivers/bzip2 \
			jbig.>=1.2::graphics/jbigkit \
			png.>=4::graphics/png \
			tiff.>=36::graphics/tiff \
			xml2.>=9::textproc/libxml \
			lcms.>=1::graphics/lcms \
			jasper.>=1::graphics/jasper


.if ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu,no_x11
RUN_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu,no_x11
CONFIGURE_ARGS+=	--without-x --without-ttf
CONFIGURE_ENV+=		ac_cv_path_FIGDecodeDelegate=no
.else
BUILD_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu
USE_X11=		Yes
RUN_DEPENDS+=		:transfig-*:print/transfig
BUILD_DEPENDS+=		:transfig-*:print/transfig
WANTLIB+=		ICE SM X11 Xext freetype
.endif

.include <bsd.port.mk>
