# $OpenBSD: Makefile,v 1.75 2004/11/07 05:08:16 brad Exp $

COMMENT=	"image processing tools"

.if ${MACHINE_ARCH} == "sparc64"
BROKEN=		${MACHINE_ARCH} run-time issues, crashing
.endif

VER=		6.0.0
DASHVER=	2
DISTNAME=	ImageMagick-${VER}-${DASHVER}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=imagemagick/}

HOMEPAGE=	http://www.simplesystems.org/ImageMagick/

LIB_DEPENDS+=	bz2.10::archivers/bzip2 \
		jbig.1.2::graphics/jbigkit \
		mpeg.13::graphics/mpeg-lib \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		xml2.6::textproc/libxml \
		lcms::graphics/lcms \
		exif::graphics/libexif \
		jasper::graphics/jasper

MAINTAINER=	Brad Smith <brad@openbsd.org>

# http://www.imagemagick.org/www/Copyright.html 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VER

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-lzw \
		 --with-quantum-depth=16 \
		 --without-dot \
		 --without-dps \
		 --without-fpx \
		 --without-hdf \
		 --without-modules \
		 --without-threads \
		 --without-perl \
		 --without-wmf
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/magick/.libs -L${LOCALBASE}/lib" \
		ac_cv_path_LaunchDelegate=no

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu,no_x11
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu,no_x11
CONFIGURE_ARGS+= --without-x --without-ttf
CONFIGURE_ENV+=	ac_cv_path_FIGDecodeDelegate=no
.else
BUILD_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
USE_X11=	Yes
RUN_DEPENDS+=	:transfig-*:print/transfig
BUILD_DEPENDS+=	:transfig-*:print/transfig
.endif

RUN_DEPENDS+=	:netpbm-*:graphics/netpbm
BUILD_DEPENDS+=	:netpbm-*:graphics/netpbm

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${DASHVER}//}

post-install:
	@perl -pi -e s#'-L${WRKBUILD}/magick/.libs '#''#g \
		${PREFIX}/bin/Magick-config
.for f in Magick++ Magick Wand
	@perl -pi -e s#'-L${WRKBUILD}/magick/.libs '#''#g \
		${PREFIX}/lib/lib${f}.la
.endfor

.include <bsd.port.mk>
