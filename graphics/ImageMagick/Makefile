# $OpenBSD: Makefile,v 1.68 2004/07/09 19:40:36 brad Exp $

COMMENT=	"display and manipulate images under X11"

VER=		6.0.0
DASHVER=	2
DISTNAME=	ImageMagick-${VER}-${DASHVER}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=imagemagick/}

HOMEPAGE=	http://www.simplesystems.org/ImageMagick/

LIB_DEPENDS=	bz2.10::archivers/bzip2 \
		jbig.1.2::graphics/jbigkit \
		mpeg.13::graphics/mpeg-lib \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		xml2.6::textproc/libxml \
		lcms::graphics/lcms \
		exif::graphics/libexif \
		jasper::graphics/jasper
RUN_DEPENDS=	:transfig-*:print/transfig \
		:netpbm-*:graphics/netpbm \
		::print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}

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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

#FLAVORS=	no_x11
#FLAVOR?=

#.if ${FLAVOR:L:Mno_x11}
#CONFIGURE_ARGS+= --without-x --without-ttf
#.else
USE_X11=	Yes
#.endif

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${DASHVER}//}

.include <bsd.port.mk>
